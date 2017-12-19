package dtmc.learn.main;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.math3.linear.RealMatrix;
import org.apache.commons.math3.linear.RealVector;

import dtmc.learn.estimator.EFEstimator;
import dtmc.learn.estimator.Estimator;
import dtmc.learn.models.Model;
import dtmc.learn.utils.FileUtil;

public class PassiveLearnExperiment implements Experiment{


	public ExperimentResult runExperiment(Config config, Estimator estimator) throws FileNotFoundException, ClassNotFoundException, IOException {

		Model model = config.getModel();
		MarkovChain mc = config.buildMarkovChain();
		int total_sample_size = config.init_sample_size + config.more_sample_size;
		int reach_bounded_step = config.getReach_bounded_step();
		List<Integer> init_states = getValidInitialStates(model);
		List<Double> init_states_probs = new ArrayList<Double>();
		for(int i=0; i<mc.getInit_dist().getDimension(); i++){
			if(mc.getInit_dist().getEntry(i)>0)
				init_states_probs.add(mc.getInit_dist().getEntry(i));
		}
		List<Integer> target_states = config.getModel().getTarget_states();

		Reachability actual_reach = new Reachability(mc.getTransitionMatrix(), init_states, init_states_probs, target_states,
				System.getProperty("user.dir")+"/resources/tmp/reach/"+model.getModel_name(), model.getModel_name()+"_actual", reach_bounded_step);
		List<Double> target_states_reach = actual_reach.computeReachability();

		RealMatrix stats_matrix = mc.simulate(total_sample_size, config.sample_length);
		RealMatrix est_matrix = estimator.estimate(stats_matrix);
		MarkovChain learned_mc = new MarkovChain(mc.getNodeNumber(), mc.getInit_dist(), est_matrix);

		int min_visit = MetricComputing.calculateMinFreq(stats_matrix);
		double mse = MetricComputing.calculateMSE(mc.getTransitionMatrix(), est_matrix);

		Reachability learned_reach = new Reachability(learned_mc.getTransitionMatrix(), init_states, init_states_probs, target_states,
				System.getProperty("user.dir")+"/resources/tmp/learned_reach/"+model.getModel_name(), model.getModel_name()+"_pa", reach_bounded_step);
		List<Double> learned_target_states_reach = learned_reach.computeReachability();
		FileUtil.writeObject(System.getProperty("user.dir")+"/resources/tmp/learned_reach/"+model.getModel_name()+"/pa_reach", learned_reach);
		
		ExperimentResult er = new ExperimentResult(min_visit, mse, target_states, target_states_reach, 
				learned_target_states_reach, learned_target_states_reach);
		System.out.println(config);
		System.out.println(er);
		return er;
	}

	public static void main(String[] args) throws FileNotFoundException, ClassNotFoundException, IOException{
		String model_name = "example";
		int sample_length = 8;
		int init_sample_size = 5000;
		int more_sample_size = 5000;
		int reach_bounded_step = 4;
		Estimator estimator = new EFEstimator();

		Config config = new Config(model_name, sample_length, init_sample_size, more_sample_size, reach_bounded_step);
		PassiveLearnExperiment exp = new PassiveLearnExperiment();
		exp.runExperiment(config, estimator);

	}

	private List<Integer> getValidInitialStates(Model model){
		RealVector init_dist = model.getInit_dist();
		List<Integer> init_states = new ArrayList<Integer>();
		for(int i=0; i<init_dist.getDimension(); i++){
			if(init_dist.getEntry(i)!=0){
				init_states.add(i);
			}
		}
		return init_states;
	}
}
