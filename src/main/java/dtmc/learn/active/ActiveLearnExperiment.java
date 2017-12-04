package dtmc.learn.active;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.math3.linear.RealMatrix;
import org.apache.commons.math3.linear.RealVector;
import org.apache.commons.math3.random.MersenneTwister;

import dtmc.learn.estimator.LaplaceEstimator;
import dtmc.learn.main.Config;
import dtmc.learn.main.Experiment;
import dtmc.learn.main.ExperimentResult;
import dtmc.learn.main.MarkovChain;
import dtmc.learn.main.MetricComputing;
import dtmc.learn.models.Model;

public class ActiveLearnExperiment implements Experiment{

	public ExperimentResult runExperiment(Config config)
			throws FileNotFoundException, ClassNotFoundException, IOException {

		Model model = config.getModel();
		MarkovChain mc = config.buildMarkovChain();
		int sample_length = config.getSample_length();
		int init_sample_size = config.getInit_sample_size();
		int more_sample_size = config.getMore_sample_size();
		int reach_bounded_step = config.getReach_bounded_step();
		List<Integer> init_states = getValidInitialStates(model);
		List<Integer> target_states = model.getTarget_states();

		// get an initial estimate
		RealMatrix stats_matrix = mc.simulate(init_sample_size, sample_length);
		RealMatrix est_matrix = new LaplaceEstimator().estimate(stats_matrix);


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
		List<Double> target_states_reach = new ArrayList<Double>();
		for(int ts : target_states){
			target_states_reach.add(mc.computeBoundedReachability(reach_bounded_step, ts));
		}
		ExperimentResult er = new ExperimentResult(min_visit, mse, target_states, target_states_reach);
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
	
	public static void main(String[] args) throws FileNotFoundException, ClassNotFoundException, IOException{
		String model_name = "example";
		int sample_length = 8;
		int init_sample_size = 1000;
		int more_sample_size = 1000;
		int reach_bounded_step = 8;
		
		Config config = new Config(model_name, sample_length, init_sample_size, more_sample_size, reach_bounded_step);
		ActiveLearnExperiment active_exp = new ActiveLearnExperiment();
		active_exp.runExperiment(config);
		
	}

}
