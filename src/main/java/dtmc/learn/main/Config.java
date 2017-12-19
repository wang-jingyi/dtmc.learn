package dtmc.learn.main;

import java.io.FileNotFoundException;
import java.io.IOException;

import dtmc.learn.models.Model;
import dtmc.learn.utils.FileUtil;

public class Config {
	
	String model_name;
	int sample_length;
	int init_sample_size;
	int more_sample_size;
	int reach_bounded_step;
	Model model;
	
	public Config(String model_name, int sample_length, int init_sample_size, int more_sample_size, int reach_bounded_step) throws FileNotFoundException, ClassNotFoundException, IOException {
		this.model_name = model_name;
		this.sample_length = sample_length;
		this.init_sample_size = init_sample_size;
		this.more_sample_size = more_sample_size;
		this.reach_bounded_step = reach_bounded_step;
		this.model = (Model) FileUtil.readObject("/Users/jingyi/Documents/workspace/dtmc.learn/src/main/resources/models/"+model_name);
	}
	
	public Config(String model_name, int sample_length, int init_sample_size, int more_sample_size) throws FileNotFoundException, ClassNotFoundException, IOException {
		this.model_name = model_name;
		this.sample_length = sample_length;
		this.init_sample_size = init_sample_size;
		this.more_sample_size = more_sample_size;
		this.model = (Model) FileUtil.readObject("/Users/jingyi/Documents/workspace/dtmc.learn/src/main/resources/models/"+model_name);
		if(model.getInit_dist().getDimension()>100){
			this.reach_bounded_step = model.getInit_dist().getDimension()/8;
		}
		else if(model.getInit_dist().getDimension()<10){
			this.reach_bounded_step = model.getInit_dist().getDimension()/2;
		}
		this.reach_bounded_step = model.getInit_dist().getDimension()/4;
	}
	
	@Override
	public String toString() {
		return "Config [model_name=" + model_name + ", sample_length=" + sample_length + ", init_sample_size="
				+ init_sample_size + ", more_sample_size=" + more_sample_size + ", reach_bounded_step="
				+ reach_bounded_step + ", model=" + model + "]";
	}

	public MarkovChain buildMarkovChain() throws FileNotFoundException, ClassNotFoundException, IOException{
		return new MarkovChain(model.getTransition_matrix().getColumnDimension(), model.getInit_dist(), model.getTransition_matrix());
	}


	public String getModel_name() {
		return model_name;
	}


	public int getSample_length() {
		return sample_length;
	}


	public int getInit_sample_size() {
		return init_sample_size;
	}


	public int getMore_sample_size() {
		return more_sample_size;
	}


	public int getReach_bounded_step() {
		return reach_bounded_step;
	}


	public Model getModel() {
		return model;
	}
	
	
	
}
