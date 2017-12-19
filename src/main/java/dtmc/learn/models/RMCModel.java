package dtmc.learn.models;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.math3.linear.MatrixUtils;
import org.apache.commons.math3.linear.RealMatrix;
import org.apache.commons.math3.linear.RealVector;

public class RMCModel {

	int node_number;
	double density;

	public RMCModel(int node_number, double density){
		this.node_number = node_number;
		this.density = density;
	}

	public void generateModel() throws FileNotFoundException, IOException{
		// rmc_n
		RandomMarkovChain rmc = new RandomMarkovChain(node_number , density, "rmc_"+node_number);
		rmc.generateRMC();

		
		List<Integer> rmc_n_ts = new ArrayList<Integer>();
		for(int i=node_number/2; i<node_number; i++){
			rmc_n_ts.add(i);
		}
		
		double[] rmc_n_id = new double[node_number];
		RealVector rmc_n_init_dist = MatrixUtils.createRealVector(rmc_n_id);
		for(int i=0; i<node_number/2; i++){
			rmc_n_init_dist.setEntry(i, (double)2/node_number);
		}
		RealMatrix rmc_n_transition_matrix = rmc.getTransitionMatrix();
		Model rmc_n_model = new Model("rmc_"+node_number, rmc_n_transition_matrix, rmc_n_init_dist, rmc_n_ts);
		rmc_n_model.saveModel();
		System.out.println("=== model saved to file ===");
	}
	
	public static void main(String[] args) throws FileNotFoundException, IOException{
		RMCModel rmc_10 = new RMCModel(10, 0.8);
		rmc_10.generateModel();
//		RMCModel rmc_16 = new RMCModel(16, 0.8);
//		rmc_16.generateModel();
//		RMCModel rmc_32 = new RMCModel(32, 0.8);
//		rmc_32.generateModel();
	}

}
