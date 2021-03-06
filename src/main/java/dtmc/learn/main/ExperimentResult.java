package dtmc.learn.main;

import java.util.List;

public class ExperimentResult {
	
	int mv;
	double mse;
	List<Integer> target_states;
	List<Double> target_states_reach;
	List<Double> learned_target_states_reach;
	List<Double> learned_target_states_reach_2;
	
	public ExperimentResult(int mv, double mse, List<Integer> target_states, List<Double> target_states_reach, 
			List<Double> learned_target_states_reach, List<Double> learned_target_states_reach_2) {
		this.mv = mv;
		this.mse = mse;
		this.target_states = target_states;
		this.target_states_reach = target_states_reach;
		this.learned_target_states_reach = learned_target_states_reach;
		this.learned_target_states_reach_2 = learned_target_states_reach_2;
	}

	@Override
	public String toString() {
		return "ExperimentResult [mv=" + mv + ", mse=" + mse + ", target_states=" + target_states
				+ ", target_states_reach=" + target_states_reach + ", learned_target_states_reach="
				+ learned_target_states_reach + ", learned_target_states_reach_2=" + learned_target_states_reach_2
				+ "]";
	}

	
}
