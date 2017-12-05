package dtmc.learn.models;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.math3.linear.MatrixUtils;
import org.apache.commons.math3.linear.RealMatrix;
import org.apache.commons.math3.linear.RealVector;

public class Example {
	
	public static void main(String[] args) throws FileNotFoundException, IOException{
		
		// example
		double[][] example_matrix = new double[][]{
			{0.99,0.001,0.009,0},
			{0,0,0.05,0.95},
			{0,0,0,1},
			{0,0,0,1}
		};
		double[] example_id = new double[]{0.999,0.001,0,0};
		List<Integer> example_ts = new ArrayList<Integer>();
		example_ts.add(3);
		
		RealVector example_init_dist = MatrixUtils.createRealVector(example_id);
		RealMatrix example_transition_matrix = MatrixUtils.createRealMatrix(example_matrix);
		Model example_model = new Model("example", example_transition_matrix, example_init_dist, example_ts);
		example_model.saveModel();
		
	}

}
