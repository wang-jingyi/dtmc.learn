package dtmc.learn.main;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import dtmc.learn.utils.FileUtil;

public class SWaTMain {

	public static void main(String[] args) throws FileNotFoundException, ClassNotFoundException, IOException{

		String model_name = "swat_LIT301_1000.0";
		int sample_length = 100;
		int[] sample_sizes = new int[]{
				50000,
				100000,
		};
		
		double target_reach_thres = 1;
		int iters = 10;

		List<List<FinalResult>> all_results = new ArrayList<List<FinalResult>>();
		for(int sample_size : sample_sizes){
			
			int batch_size = sample_size/1000;
			
			List<FinalResult> all_result = new ArrayList<>();
			sample_size = sample_size/2;
			Config config = new Config(model_name, sample_length, sample_size, sample_size);
			int state_number = config.getModel().getInit_dist().getDimension();
			int reach_bounded_step = config.getReach_bounded_step();
			// adjust n here
			int[] top_n_smalls = new int[]{1, state_number/4, state_number/2};
			for(int top_n_small : top_n_smalls){
				FinalResult active_result = Main.executeActiveLearning(model_name, sample_length, sample_size, sample_size, reach_bounded_step, 
						batch_size, top_n_small, target_reach_thres, iters);
				all_result.add(active_result);
			}
			FinalResult passive_result = Main.executePassiveLearning(model_name, sample_length, sample_size, sample_size,
					reach_bounded_step, target_reach_thres, iters);
			all_result.add(passive_result);
			
			all_results.add(all_result);
		}
		FileUtil.writeObject(GlobalConfigs.RESULT_PATH+"/"+model_name+"_results", 
				all_results);
		System.out.println("====== all results: ======");
		for(List<FinalResult> fr : all_results){
			System.out.println("=========== sample size ============");
			for(int i=0; i<fr.size(); i++){
				System.out.println("--- " + fr.get(i));
			}
		}
		Main.saveResults(sample_sizes, GlobalConfigs.RESULT_PATH + "/" + model_name + "_results.csv", all_results);
	}
}
