package dtmc.learn.main;

import java.io.FileNotFoundException;
import java.io.IOException;

public class Main {
	
	public static void main(String[] args) throws FileNotFoundException, ClassNotFoundException, IOException{
		
		String model_name = "example";
		int sample_length = 4;
		int init_sample_size = 1000;
		int more_sample_size = 5000;
		int reach_bounded_step = 4;
		
		Config config = new Config(model_name, sample_length, init_sample_size, more_sample_size, reach_bounded_step);
		ActiveLearnExperiment active_exp = new ActiveLearnExperiment();
		PassiveLearnExperiment pa_exp = new PassiveLearnExperiment();
		ExperimentResult active_er = active_exp.runExperiment(config);
		ExperimentResult pa_er = pa_exp.runExperiment(config);
		
		System.out.println("--- active learning: " + active_er);
		System.out.println("--- passive learning: " + pa_er);
		
	}
}
