package dtmc.learn.main;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.math3.linear.RealMatrix;

import dtmc.learn.estimator.LaplaceEstimator;

public class PassiveLearnExperiment implements Experiment{
	

	public ExperimentResult runExperiment(Config config) throws FileNotFoundException, ClassNotFoundException, IOException {
		
		MarkovChain mc = config.buildMarkovChain();
		int total_sample_size = config.init_sample_size + config.more_sample_size;
		RealMatrix stats_matrix = mc.simulate(total_sample_size, config.sample_length);
		RealMatrix est_matrix = new LaplaceEstimator().estimate(stats_matrix);
		
		int min_visit = MetricComputing.calculateMinFreq(stats_matrix);
		double mse = MetricComputing.calculateMSE(mc.getTransitionMatrix(), est_matrix);
		List<Integer> target_states = config.getModel().getTarget_states();
		List<Double> target_states_reach = new ArrayList<Double>();
		for(int ts : target_states){
			target_states_reach.add(mc.computeBoundedReachability(config.getReach_bounded_step(), ts));
		}
		ExperimentResult er = new ExperimentResult(min_visit, mse, target_states, target_states_reach);
		System.out.println(config);
		System.out.println(er);
		return er;
	}
	
	public static void main(String[] args) throws FileNotFoundException, ClassNotFoundException, IOException{
		String model_name = "example";
		int sample_length = 8;
		int init_sample_size = 1000;
		int more_sample_size = 1000;
		int reach_bounded_step = 8;
		
		Config config = new Config(model_name, sample_length, init_sample_size, more_sample_size, reach_bounded_step);
		PassiveLearnExperiment exp = new PassiveLearnExperiment();
		exp.runExperiment(config);
		
	}
	
}
