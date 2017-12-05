package dtmc.learn.main;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.math3.linear.RealMatrix;
import org.apache.commons.math3.linear.RealVector;
import org.apache.commons.math3.random.MersenneTwister;

import dtmc.learn.active.IDO;
import dtmc.learn.estimator.LaplaceEstimator;
import dtmc.learn.models.Model;
import dtmc.learn.utils.FileUtil;

public class ActiveLearnExperiment implements Experiment{

	public ExperimentResult runExperiment(Config config)
			throws FileNotFoundException, ClassNotFoundException, IOException {
		
		// clean the gurobi log
		FileUtil.deleteFile(System.getProperty("user.dir")+"/optimize.initial.distribution.log");

		Model model = config.getModel();
		MarkovChain mc = config.buildMarkovChain();
		int sample_length = config.getSample_length();
		int init_sample_size = config.getInit_sample_size();
		int more_sample_size = config.getMore_sample_size();
		int reach_bounded_step = config.getReach_bounded_step();
		List<Integer> init_states = getValidInitialStates(model);
		List<Double> init_states_probs = new ArrayList<Double>();
		for(int i=0; i<mc.getInit_dist().getDimension(); i++){
			if(mc.getInit_dist().getEntry(i)>0)
				init_states_probs.add(mc.getInit_dist().getEntry(i));
		}
		List<Integer> target_states = model.getTarget_states();
		
		Reachability actual_reach = new Reachability(mc.getTransitionMatrix(), init_states, init_states_probs, target_states,
				System.getProperty("user.dir")+"/resources/tmp/reach/"+model.getModel_name(), model.getModel_name()+"_actual", reach_bounded_step);
		List<Double> target_states_reach = actual_reach.computeReachability();
		
		// get an initial estimate
		RealMatrix stats_matrix = mc.simulate(init_sample_size, sample_length);
		RealMatrix est_matrix = new LaplaceEstimator().estimate(stats_matrix);
		MarkovChain learned_mc = new MarkovChain(mc.getNodeNumber(), mc.getInit_dist(), est_matrix);

		// compute optimal initial distribution
		boolean stopping = false;
		int iter = 0;
		while(!stopping){
			iter++;
			int target_optimize_state = getTargetOptimizeState(stats_matrix);
			IDO ido = new IDO(target_optimize_state, est_matrix, sample_length);
			RealVector optimal_init_dist = ido.computeOptimalInitialDistribution(init_states);
			mc.simulate(optimal_init_dist, stats_matrix, more_sample_size/100, sample_length);
			if(iter>100){
				stopping = true;
			}
		}
		
		est_matrix = new LaplaceEstimator().estimate(stats_matrix);
		int min_visit = MetricComputing.calculateMinFreq(stats_matrix);
		double mse = MetricComputing.calculateMSE(mc.getTransitionMatrix(), est_matrix);
		
		Reachability active_learned_reach = new Reachability(learned_mc.getTransitionMatrix(), init_states, init_states_probs, target_states,
				System.getProperty("user.dir")+"/resources/tmp/active_learned_reach/"+model.getModel_name(), model.getModel_name()+"_actual", reach_bounded_step);
		List<Double> active_learned_target_states_reach = active_learned_reach.computeReachability();
		
		ExperimentResult er = new ExperimentResult(min_visit, mse, target_states, target_states_reach, active_learned_target_states_reach);
		System.out.println(config);
		System.out.println(er);
		return er;
		
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

	private int getTargetOptimizeState(RealMatrix stats_matrix){
		int node_number = stats_matrix.getRowDimension();
		double[] row_sums = new double[node_number];
		for(int i=0; i<node_number; i++){
			int row_sum = 0;
			for(int j=0; j<node_number; j++){
				row_sum += stats_matrix.getEntry(i, j);
			}
			row_sums[i] = row_sum;
		} 

		int min_fre_state = 0;
		double min_non_zero_row_sum = Double.MAX_VALUE;
		for(int i=0; i<row_sums.length; i++){
			if(row_sums[i]<min_non_zero_row_sum 
					&& row_sums[i]!=0
					){ // only those states 
				min_fre_state = i;
				min_non_zero_row_sum = row_sums[i];
			}
		}

		List<Integer> mins = new ArrayList<Integer>();
		for(int i=0; i<node_number; i++){
			if(row_sums[i]==row_sums[min_fre_state]){
				mins.add(i);
			}
		}
		int minsSize = mins.size();
		min_fre_state = mins.get(new MersenneTwister().nextInt(minsSize));
		
		return min_fre_state;
	}
	
}
