package dtmc.learn.main;

import java.util.List;

public class StatsOperations {
	
	public static FinalResult extractFinalResult(ExperimentResult er, double target_reach_thres){
		
		int min_visit = er.mv;
		double mse = er.mse;

		double avg_rrd = 0;
		double reach_avg_rrd = 0;
		int target_num = 0;
		for(int i=0; i<er.target_states.size(); i++){
			if(er.target_states_reach.get(i)<target_reach_thres){
				target_num++;
				avg_rrd += Math.abs(er.target_states_reach.get(i)-er.learned_target_states_reach.get(i))
						/er.target_states_reach.get(i);
				reach_avg_rrd += Math.abs(er.target_states_reach.get(i)-er.learned_target_states_reach_2.get(i))
						/er.target_states_reach.get(i);
			}
		}
		
		assert target_num>0 : "=== please raise the target reachability threshold ===";
		avg_rrd = avg_rrd/target_num;
		reach_avg_rrd = reach_avg_rrd/target_num;
		return new FinalResult(min_visit, mse, avg_rrd, reach_avg_rrd);
	}
	
	public static FinalResult averageFinalResult(List<FinalResult> frs){
		
		int min_visit = 0;
		double mse = 0;
		double rrd = 0;
		double reach_rrd = 0;
		
		int n = frs.size();
		
		for(int i=0; i<n; i++){
			min_visit += frs.get(i).min_visit;
			mse += frs.get(i).mse;
			rrd += frs.get(i).avg_rrd;
			reach_rrd += frs.get(i).reach_avg_rrd;
		}
		
		return new FinalResult(min_visit/n, mse/n, rrd/n, reach_rrd/n);
		
	}

}
