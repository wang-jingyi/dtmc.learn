package dtmc.learn.models;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.HashSet;
import java.util.List;

import org.apache.commons.math3.linear.MatrixUtils;
import org.apache.commons.math3.linear.RealMatrix;
import org.apache.commons.math3.linear.RealVector;

import dtmc.learn.utils.FileUtil;

public class SWaTModel {
	
	public static String MODEL_PATH = "/Users/jingyi/Ziqian/resource/case_study";
	public static String SENSOR = "FIT502"; // sensor name in string
	public static double SENSOR_THRES = 1.3; // action threshold
	public static double SAFETY_THRESHOLD = 0.2; // how much more than the training unsafe probability
	public static String OUTPUT_MODEL_PATH = MODEL_PATH + "/output/" + SENSOR + "/" + SENSOR_THRES + "/" + SAFETY_THRESHOLD;
	
	public SWaTModel() {
		// TODO Auto-generated constructor stub
	}
	
	public static void main(String[] args) throws FileNotFoundException, ClassNotFoundException, IOException{
		
		RealMatrix swat_matrix = (RealMatrix) FileUtil.readObject(SWaTModel.OUTPUT_MODEL_PATH+"/transition_matrix");
		@SuppressWarnings("unchecked")
		List<Integer> target_states = (List<Integer>) FileUtil.readObject(SWaTModel.OUTPUT_MODEL_PATH+"/target_states");
		
		HashSet<Integer> ts_hash = new HashSet<>(target_states);
		RealVector init_dist = MatrixUtils.createRealVector(new double[swat_matrix.getColumnDimension()]);
		int non_target_state_number = swat_matrix.getColumnDimension()-target_states.size();
		
//		double[] random_init_dist = RandomUtil.generateRandomDistribution(non_target_state_number);
		
//		int count = 0;
		for(int i=0; i<swat_matrix.getColumnDimension(); i++){
			if(!ts_hash.contains(i)){
				init_dist.setEntry(i, (double)1/non_target_state_number);
//				init_dist.setEntry(i, random_init_dist[count]);
//				count++;
			}
		}
		
		Model swat_model = new Model("swat_"+SENSOR+"_"+SENSOR_THRES, swat_matrix, init_dist, target_states);
		swat_model.saveModel();
		System.out.println("=== model saved to file ===");
	}

}
