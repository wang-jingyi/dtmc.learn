package dtmc.learn.main;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import dtmc.learn.estimator.Estimator;
import dtmc.learn.estimator.LaplaceEstimator;
import dtmc.learn.utils.FileUtil;

public class Main {
	
	public static Estimator estimator = new LaplaceEstimator();

	public static void main(String[] args) throws FileNotFoundException, ClassNotFoundException, IOException{

		String model_name = "example";
		int sample_length = 4;
		int[] sample_sizes = new int[]{
				10000,
//				20000,
//				30000,
//				40000,
//				50000,
//				80000,
//				100000
				};
		int init_sample_size = 5000;
		int reach_bounded_step = 4;
		int top_n_small = 1;
		double target_reach_thres = 1;
		int iters = 1;
		
		List<List<FinalResult>> all_results = new ArrayList<List<FinalResult>>();
		for(int sample_size : sample_sizes){
			List<FinalResult> all_result = new ArrayList<>();

			int more_sample_size= sample_size - init_sample_size;
			
			int[] batch_sizes = new int[]{
					1, 
//					sample_size/1000,
//					sample_size
					}; // batch size is set here
			
			for(int batch_size : batch_sizes){
				FinalResult result= executeActiveLearning(model_name, sample_length, init_sample_size, more_sample_size,
						reach_bounded_step, batch_size, top_n_small, target_reach_thres, iters);
				all_result.add(result);
			}
			FinalResult passive_result = executePassiveLearning(model_name, sample_length, init_sample_size, more_sample_size,
					reach_bounded_step, target_reach_thres, iters);
			all_result.add(passive_result);
			all_results.add(all_result);
		}
		FileUtil.writeObject("/Users/jingyi/Documents/workspace/dtmc.learn/src/main/resources/models/"+model_name+"_results", 
				all_results);
		System.out.println("====== all results: ======");
		for(List<FinalResult> fr : all_results){
			System.out.println("=======================");
			for(int i=0; i<fr.size(); i++){
				System.out.println("--- " + fr.get(i));
			}
		}
		saveResults(sample_sizes, GlobalConfigs.RESULT_PATH+"/"+model_name+"_results.csv", all_results);
	}

	public static FinalResult executeActiveLearning(String model_name, int sample_length, int init_sample_size, int more_sample_size,
			int reach_bounded_step, int batch_size, int top_n_small, double target_reach_thres, int iters) throws FileNotFoundException, ClassNotFoundException, IOException{

		Config config = new Config(model_name, sample_length, init_sample_size, more_sample_size, reach_bounded_step);

		List<FinalResult> active_results = new ArrayList<FinalResult>();

		for(int i=0; i<iters; i++){
			System.out.println("------ experiment " + (i+1) + " ------");
			ActiveLearnExperiment active_exp = new ActiveLearnExperiment(batch_size, top_n_small);
			ExperimentResult active_er = active_exp.runExperiment(config, estimator);
			active_results.add(StatsOperations.extractFinalResult(active_er, target_reach_thres));
		}
		System.out.println("--- averaging results ---");
		FinalResult active_fr = StatsOperations.averageFinalResult(active_results);
		System.out.println("--- active learning: " + active_fr);
		return active_fr;
	}
	
	public static FinalResult executePassiveLearning(String model_name, int sample_length, int init_sample_size, int more_sample_size,
			int reach_bounded_step, double target_reach_thres, int iters) throws FileNotFoundException, ClassNotFoundException, IOException{
		
		Config config = new Config(model_name, sample_length, init_sample_size, more_sample_size, reach_bounded_step);
		List<FinalResult> pa_results = new ArrayList<FinalResult>();

		for(int i=0; i<iters; i++){
			System.out.println("------ experiment " + (i+1) + " ------");
			PassiveLearnExperiment pa_exp = new PassiveLearnExperiment();
			ExperimentResult pa_er = pa_exp.runExperiment(config, estimator);
			pa_results.add(StatsOperations.extractFinalResult(pa_er, target_reach_thres));
		}

		System.out.println("--- averaging results ---");
		FinalResult pa_fr = StatsOperations.averageFinalResult(pa_results);

		System.out.println("--- passive learning: " + pa_fr);
		return pa_fr;
	}
	
	public static void saveResults(int[] sample_sizes, String file_path, List<List<FinalResult>> all_results) throws FileNotFoundException{
		StringBuffer buffer = new StringBuffer();
		int sn = all_results.size();
		
		for(int i=0; i<4; i++){
			
			if(i==0){ // mv
				buffer.append("--- mv: \n");
				buffer.append("- ido 1: ");
				for(int j=0; j<all_results.size()-1; j++){
					buffer.append(all_results.get(j).get(0).min_visit + ",");
				} buffer.append(all_results.get(sn-1).get(0).min_visit + "\n");
				
				buffer.append("- ido 2: ");
				for(int j=0; j<all_results.size()-1; j++){
					buffer.append(all_results.get(j).get(1).min_visit + ",");
				} buffer.append(all_results.get(sn-1).get(1).min_visit + "\n");
				
				buffer.append("- ido 3: ");
				for(int j=0; j<all_results.size()-1; j++){
					buffer.append(all_results.get(j).get(2).min_visit + ",");
				} buffer.append(all_results.get(sn-1).get(2).min_visit + "\n");
				
				buffer.append("- pa: ");
				for(int j=0; j<all_results.size()-1; j++){
					buffer.append(all_results.get(j).get(3).min_visit + ",");
				} buffer.append(all_results.get(sn-1).get(3).min_visit + "\n\n");
			}
			if(i==1){ // mse
				
				buffer.append("--- mse: \n");
				buffer.append("- ido 1: ");
				for(int j=0; j<all_results.size()-1; j++){
					buffer.append(all_results.get(j).get(0).mse + ",");
				} buffer.append(all_results.get(sn-1).get(0).mse+ "\n");
				
				buffer.append("- ido 2: ");
				for(int j=0; j<all_results.size()-1; j++){
					buffer.append(all_results.get(j).get(1).mse+ ",");
				} buffer.append(all_results.get(sn-1).get(1).mse+ "\n");
				
				buffer.append("- ido 3: ");
				for(int j=0; j<all_results.size()-1; j++){
					buffer.append(all_results.get(j).get(2).mse+ ",");
				} buffer.append(all_results.get(sn-1).get(2).mse+ "\n");
				
				buffer.append("- pa: ");
				for(int j=0; j<all_results.size()-1; j++){
					buffer.append(all_results.get(j).get(3).mse+ ",");
				} buffer.append(all_results.get(sn-1).get(3).mse+ "\n\n");
				
			}
			if(i==2){ // rrd
				
				buffer.append("--- rrd: \n");
				buffer.append("- ido 1: ");
				for(int j=0; j<all_results.size()-1; j++){
					buffer.append(all_results.get(j).get(0).avg_rrd + ",");
				} buffer.append(all_results.get(sn-1).get(0).avg_rrd+ "\n");
				
				buffer.append("- ido 2: ");
				for(int j=0; j<all_results.size()-1; j++){
					buffer.append(all_results.get(j).get(1).avg_rrd+ ",");
				} buffer.append(all_results.get(sn-1).get(1).avg_rrd+ "\n");
				
				buffer.append("- ido 3: ");
				for(int j=0; j<all_results.size()-1; j++){
					buffer.append(all_results.get(j).get(2).avg_rrd+ ",");
				} buffer.append(all_results.get(sn-1).get(2).avg_rrd+ "\n");
				
				buffer.append("- pa: ");
				for(int j=0; j<all_results.size()-1; j++){
					buffer.append(all_results.get(j).get(3).avg_rrd+ ",");
				} buffer.append(all_results.get(sn-1).get(3).avg_rrd+ "\n\n");
				
			} 
			if(i==3){ // rrd_reach
				buffer.append("--- rrd_reach: \n");
				buffer.append("- ido 1: ");
				for(int j=0; j<all_results.size()-1; j++){
					buffer.append(all_results.get(j).get(0).reach_avg_rrd + ",");
				} buffer.append(all_results.get(sn-1).get(0).reach_avg_rrd+ "\n");
				
				buffer.append("- ido 2: ");
				for(int j=0; j<all_results.size()-1; j++){
					buffer.append(all_results.get(j).get(1).reach_avg_rrd+ ",");
				} buffer.append(all_results.get(sn-1).get(1).reach_avg_rrd+ "\n");
				
				buffer.append("- ido 3: ");
				for(int j=0; j<all_results.size()-1; j++){
					buffer.append(all_results.get(j).get(2).reach_avg_rrd+ ",");
				} buffer.append(all_results.get(sn-1).get(2).reach_avg_rrd+ "\n");
				
				buffer.append("- pa: ");
				for(int j=0; j<all_results.size()-1; j++){
					buffer.append(all_results.get(j).get(3).reach_avg_rrd+ ",");
				} buffer.append(all_results.get(sn-1).get(3).reach_avg_rrd+ "\n\n");
			}
		}
//		for(List<FinalResult> fr_list : all_results){
//			buffer.append("--- a set of result for sample size:" + sample_sizes[counter] + "\n");
//			int result_size_number = 4;
//			buffer.append("-mv: ");
//			for(int i=0; i<fr_list.size()-1; i++){
//				buffer.append(fr_list.get(i).min_visit + ",");
//			}
//			buffer.append(fr_list.get(result_size_number-1).min_visit+"\n");
//			
//			buffer.append("-mse: ");
//			for(int i=0; i<fr_list.size()-1; i++){
//				buffer.append(fr_list.get(i).mse+ ",");
//			}
//			buffer.append(fr_list.get(result_size_number-1).mse+"\n");
//			
//			buffer.append("-rrd: ");
//			for(int i=0; i<fr_list.size()-1; i++){
//				buffer.append(fr_list.get(i).avg_rrd+ ",");
//			}
//			buffer.append(fr_list.get(result_size_number-1).avg_rrd+"\n");
//			
//			buffer.append("-rrd_reach: ");
//			for(int i=0; i<fr_list.size()-1; i++){
//				buffer.append(fr_list.get(i).reach_avg_rrd+ ",");
//			}
//			buffer.append(fr_list.get(result_size_number-1).reach_avg_rrd+"\n\n");
//			counter++;
//		}
//		
		FileUtil.writeStringToFile(file_path, buffer.toString());
	}

}
