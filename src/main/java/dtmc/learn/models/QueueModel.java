package dtmc.learn.models;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.math3.linear.MatrixUtils;
import org.apache.commons.math3.linear.RealMatrix;
import org.apache.commons.math3.linear.RealVector;

public class QueueModel {

	public static void main(String[] args) throws FileNotFoundException, IOException{

		double[][] queue_matrix = new double[][]{
			{0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0},
			{0.53 , 0 , 0.47 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0},
			{0 , 0.65 , 0 , 0.35 , 0 , 0 , 0 , 0 , 0 , 0 , 0},
			{0 , 0 , 0.45 , 0 , 0.55 , 0 , 0 , 0 , 0 , 0 , 0},
			{0 , 0 , 0 , 0.30 , 0 , 0.70 , 0 , 0 , 0 , 0 , 0},
			{0 , 0 , 0 , 0 , 0.62 , 0 , 0.38 , 0 , 0 , 0 , 0},
			{0 , 0 , 0 , 0 , 0 , 0.68 , 0 , 0.32 , 0 , 0 , 0},
			{0 , 0 , 0 , 0 , 0 , 0 , 0.64 , 0 , 0.36 , 0 , 0},
			{0 , 0 , 0 , 0 , 0 , 0 , 0 , 0.52 , 0 , 0.48 , 0},
			{0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0.61 , 0 , 0.39},
			{0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 1 , 0}
		};
		double[] queue_id = new double[]{0.99,0.01,0,0};
		List<Integer> queue_ts = new ArrayList<Integer>();
		queue_ts.add(3);

		RealVector queue_init_dist = MatrixUtils.createRealVector(queue_id);
		RealMatrix queue_transition_matrix = MatrixUtils.createRealMatrix(queue_matrix);
		Model queue_model = new Model("queue", queue_transition_matrix, queue_init_dist, queue_ts);
		queue_model.saveModel();

	}
}
