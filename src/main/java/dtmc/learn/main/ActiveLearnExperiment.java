package dtmc.learn.main;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.math3.linear.RealMatrix;
import org.apache.commons.math3.linear.RealVector;

import dtmc.learn.active.IDO;
import dtmc.learn.estimator.Estimator;
import dtmc.learn.models.Model;
import dtmc.learn.utils.FileUtil;
import dtmc.learn.utils.RandomUtil;

public class ActiveLearnExperiment implements Experiment{

	int batch_size = 100;
	int top_n_small = 10;

	public ActiveLearnExperiment(int batch_size, int top_n_small) {
		this.batch_size = batch_size;
		this.top_n_small = top_n_small;
	}

	public ActiveLearnExperiment() {
	}

	public ExperimentResult runExperiment(Config config, Estimator estimator)
			throws FileNotFoundException, ClassNotFoundException, IOException {

		// clean the gurobi log, it's really large file if not cleaned
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
		FileUtil.writeObject(GlobalConfigs.TMP_PATH+"/reach/"+model.getModel_name()+"/actual_reach", actual_reach);

		// get an initial estimate
		RealMatrix stats_matrix = mc.simulate(init_sample_size, sample_length);
		RealMatrix est_matrix = estimator.estimate(stats_matrix);

		// max min
		boolean stopping = false;
		int total_sample = 0;
		RealMatrix trans_stats_matrix = stats_matrix.copy();
		RealMatrix trans_est_matrix = est_matrix.copy();
		while(!stopping){
			total_sample += batch_size;
			int target_optimize_state = getTargetOptimizeState(trans_stats_matrix, top_n_small);
			IDO ido = new IDO(target_optimize_state, trans_est_matrix, sample_length);
			RealVector optimal_init_dist = ido.computeOptimalInitialDistribution(init_states);
			mc.simulate(optimal_init_dist, trans_stats_matrix, batch_size, sample_length);
			trans_est_matrix = estimator.estimate(trans_stats_matrix);
			if(total_sample>=more_sample_size){
				stopping = true;
			}
		}
		int min_visit = MetricComputing.calculateMinFreq(trans_stats_matrix);
		double mse = MetricComputing.calculateMSE(mc.getTransitionMatrix(), trans_est_matrix);

		Reachability active_learned_reach = new Reachability(trans_est_matrix, init_states, init_states_probs, target_states,
				System.getProperty("user.dir")+"/resources/tmp/active_learned_reach/"+model.getModel_name(), model.getModel_name()+"_reach", reach_bounded_step);
		List<Double> active_learned_target_states_reach = active_learned_reach.computeReachability();
		FileUtil.writeObject(System.getProperty("user.dir")+"/resources/tmp/active_learned_reach/"+model.getModel_name()+"/active_reach", active_learned_reach);

		// max reach
		stopping = false;
		total_sample = 0;
		RealMatrix reach_stats_matrix = stats_matrix.copy();
		RealMatrix reach_est_matrix = est_matrix.copy();
		while(!stopping){
			total_sample += batch_size;
			int target_optimize_state = getReachOptimizeState(target_states); 
			IDO ido = new IDO(target_optimize_state, reach_est_matrix, sample_length);
			RealVector optimal_init_dist = ido.computeOptimalInitialDistribution(init_states);
			mc.simulate(optimal_init_dist, reach_stats_matrix, batch_size, sample_length);
			reach_est_matrix = estimator.estimate(reach_stats_matrix);
			if(total_sample>=more_sample_size){
				stopping = true;
			}
		}

		Reachability active_learned_reach_2 = new Reachability(reach_est_matrix, init_states, init_states_probs, target_states,
				System.getProperty("user.dir")+"/resources/tmp/active_learned_reach_2/"+model.getModel_name(), model.getModel_name()+"_reach_2", reach_bounded_step);
		List<Double> active_learned_target_states_reach_2 = active_learned_reach_2.computeReachability();
		FileUtil.writeObject(System.getProperty("user.dir")+"/resources/tmp/active_learned_reach_2/"+model.getModel_name()+"/active_reach_2", active_learned_reach_2);

		ExperimentResult er = new ExperimentResult(min_visit, mse, target_states, target_states_reach, 
				active_learned_target_states_reach, active_learned_target_states_reach_2);
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

	private int getReachOptimizeState(List<Integer> target_states){
		int i = RandomUtil.nextInt(0, target_states.size()-1);
		return target_states.get(i);
	}

	private int getTargetOptimizeState(RealMatrix stats_matrix, int top_n_min){
		int node_number = stats_matrix.getRowDimension();
		List<Integer> row_sums = new ArrayList<>();
		Map<Integer, Integer> row_sum_map = new HashMap<>();
		for(int i=0; i<node_number; i++){
			int row_sum = 0;
			for(int j=0; j<node_number; j++){
				row_sum += stats_matrix.getEntry(i, j);
			}
			row_sum_map.put(row_sum, i);
			row_sums.add(row_sum);
		} 
		Collections.sort(row_sums);
		int target_state = row_sum_map.get(row_sums.get(RandomUtil.nextInt(0, top_n_min-1))); 
		return target_state;
	}

}
