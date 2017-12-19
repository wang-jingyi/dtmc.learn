package dtmc.learn.models;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.math3.linear.MatrixUtils;
import org.apache.commons.math3.linear.RealMatrix;
import org.apache.commons.math3.linear.RealVector;

public class HollowMatrix {

	public static void main(String[] args) throws FileNotFoundException, IOException{

		// hollow
		double[][] hollow_matrix = new double[][]{
			{0,0.992,0.003,0.005},
			{0.98,0,0.01,0.01},
			{0.4,0.13,0,0.47},
			{0.42,0.2,0.38,0}
		};
		double[] hollow_id = new double[]{0.99,0.01,0,0};
		List<Integer> hollow_ts = new ArrayList<Integer>();
		hollow_ts.add(2);
		hollow_ts.add(3);

		RealVector hollow_init_dist = MatrixUtils.createRealVector(hollow_id);
		RealMatrix hollow_transition_matrix = MatrixUtils.createRealMatrix(hollow_matrix);
		Model hollow_model = new Model("hollow", hollow_transition_matrix, hollow_init_dist, hollow_ts);
		hollow_model.saveModel();
		System.out.println("=== model saved to file ===");

	}

}
