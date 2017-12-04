package dtmc.learn.models;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.Serializable;
import java.util.List;

import org.apache.commons.math3.linear.RealMatrix;
import org.apache.commons.math3.linear.RealVector;

import dtmc.learn.utils.FileUtil;

public class Model implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 7048602254969014156L;
	String model_name;
	RealMatrix transition_matrix;
	RealVector init_dist;
	List<Integer> target_states;
	
	public Model(String model_name, RealMatrix transition_matrix, RealVector init_dist, List<Integer> target_states) {
		this.model_name = model_name;
		this.transition_matrix = transition_matrix;
		this.init_dist = init_dist;
		this.target_states = target_states;
	}

	@Override
	public String toString() {
		return "Model [transition_matrix=" + transition_matrix + ", init_dist=" + init_dist + ", target_states="
				+ target_states + "]";
	}
	
	public void saveModel() throws FileNotFoundException, IOException{
		FileUtil.writeObject("/Users/jingyi/Documents/workspace/dtmc.learn/src/main/resources/models/"+model_name, this);
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public String getModel_name() {
		return model_name;
	}

	public RealMatrix getTransition_matrix() {
		return transition_matrix;
	}

	public RealVector getInit_dist() {
		return init_dist;
	}

	public List<Integer> getTarget_states() {
		return target_states;
	}
	
}
