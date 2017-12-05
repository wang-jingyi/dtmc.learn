package dtmc.learn.main;

import java.util.ArrayList;
import java.util.List;

import org.apache.commons.math3.linear.MatrixUtils;
import org.apache.commons.math3.linear.OpenMapRealMatrix;
import org.apache.commons.math3.linear.OpenMapRealVector;
import org.apache.commons.math3.linear.RealMatrix;
import org.apache.commons.math3.linear.RealVector;
import org.apache.commons.math3.linear.SparseRealMatrix;

import dtmc.learn.utils.MarkovChainUtil;
import dtmc.learn.utils.RandomUtil;

public class MarkovChain {

	private int nodeNumber;
	private RealVector init_dist; // matrix with only 1 row 
	private RealMatrix transitionMatrix;

	public MarkovChain(int node_number) {
		this.nodeNumber = node_number;
		this.transitionMatrix = MatrixUtils.createRealMatrix(node_number, node_number); 
	}

	public MarkovChain(int node_number, RealVector initDist, double[][] transitionMatrix){
		this.nodeNumber = node_number;
		this.init_dist = initDist;
		this.transitionMatrix = MatrixUtils.createRealMatrix(transitionMatrix);
	}
	
	public MarkovChain(int node_number, RealVector initDist, RealMatrix transitionMatrix){
		this.nodeNumber = node_number;
		this.init_dist = initDist;
		this.transitionMatrix = transitionMatrix;
	}
	
	public RealMatrix getTransitionMatrix() {
		return transitionMatrix;
	}

	public int getNodeNumber() {
		return nodeNumber;
	}

	public MarkovChain(RealMatrix matrix, RealVector initDist) {
		this.nodeNumber = matrix.getRowDimension();
		this.init_dist = initDist;
		this.transitionMatrix = matrix;
	}
	
	/**
	 * @param num_path number of paths 
	 * @param path_length length of each path
	 * @return the frequency matrix of the simulation
	 */
	public RealMatrix simulate(int num_path, int path_length){
		RealMatrix frequency_matrix = null;
		RealVector visits = null;

		if(transitionMatrix instanceof SparseRealMatrix){
			frequency_matrix = new OpenMapRealMatrix(nodeNumber, nodeNumber);
			visits = new OpenMapRealVector(nodeNumber);
		}
		else{
			frequency_matrix = MatrixUtils.createRealMatrix(nodeNumber, nodeNumber);
			visits = MatrixUtils.createRealVector(new double[nodeNumber]);
		}
		
		for(int i=0; i<num_path; i++){
			List<Integer> path = simulateOnePath(path_length);
			for(int j=0; j<path.size()-1; j++){
				frequency_matrix.addToEntry(path.get(j), path.get(j+1), 1);
				visits.addToEntry(path.get(j), 1);
			}
			visits.addToEntry(path.get(path_length-1), 1);
		}
		return frequency_matrix;
	}

	/**
	 * @param min_visit minimum number of visits for all the states
	 * @return the frequency matrix when sample finishes
	 */
	public RealMatrix simulate(double min_visit){
		RealMatrix frequency_matrix = null;
		RealVector visits = null;

		if(transitionMatrix instanceof SparseRealMatrix){
			frequency_matrix = new OpenMapRealMatrix(nodeNumber, nodeNumber);
			visits = new OpenMapRealVector(nodeNumber);
		}
		else{
			frequency_matrix = MatrixUtils.createRealMatrix(nodeNumber, nodeNumber);
			visits = MatrixUtils.createRealVector(new double[nodeNumber]);
		}

		double current_min_visits = 0;
		int init_state = nextState(init_dist);
		visits.setEntry(init_state, 1);
		int current_state = init_state;

		while(current_min_visits<min_visit){
			
			if(transitionMatrix.getEntry(current_state, current_state)==1) // sink state, break
				break;
			int next_state = nextState(current_state);
			frequency_matrix.addToEntry(current_state, next_state, 1);
			visits.addToEntry(current_state, 1);
			current_state = next_state;
			current_min_visits = visits.getMinValue();
		}
		return frequency_matrix;
	}
	
	
	/**
	 * @param given_init_dist given a specific initial distribution
	 * @param stats_matrix the current frequency matrix
	 * @param sample_size size of samples
	 * @param path_length length of path
	 * @return updated frequency matrix
	 */
	public RealMatrix simulate(RealVector given_init_dist, RealMatrix stats_matrix, int sample_size, int path_length){
		
		for(int i=0; i<sample_size; i++){
			List<Integer> path = new ArrayList<Integer>();
			int initState = nextState(given_init_dist);
			path.add(initState);
			int current_state = initState;
			for(int j=0; j<path_length-1; j++){
				int ns = nextState(current_state);
				stats_matrix.addToEntry(current_state, ns, 1);
				path.add(ns);
				current_state = ns;
			}
		}
		return stats_matrix;
	}
	
	public static void main(String[] args){
		double[] init = new double[]{0.99,0.01,0,0};
		RealVector init_dist = MatrixUtils.createRealVector(init);
		RealMatrix trans_matrix = MatrixUtils.createRealMatrix(new double[][]{{0.9,0.09,0.01,0},{0,0,0.05,0.95},{0,0,0,1},{0,0,0,1}});
		MarkovChain mc = new MarkovChain(trans_matrix, init_dist);
		RealMatrix freq_matrix = mc.simulate(1000, 4);
		System.out.println("frequency matrix: " + freq_matrix);
		System.out.println("estimation: " + MarkovChainUtil.normalizeFrequency(freq_matrix));
	}



	// simulate a path of certain length and return the frequency matrix
	public RealMatrix simulate(int path_length){

		RealMatrix frequency_matrix = null;

		if(transitionMatrix instanceof SparseRealMatrix){
			frequency_matrix = new OpenMapRealMatrix(nodeNumber, nodeNumber);
		}
		else{
			frequency_matrix = MatrixUtils.createRealMatrix(nodeNumber, nodeNumber);
		}

		int init_state = nextState(init_dist);
		int current_state = init_state;

		int total_length = 1;
		while(total_length<path_length){
			int next_state = nextState(current_state);
			frequency_matrix.addToEntry(current_state, next_state, 1);
			current_state = next_state;
			total_length++;
		}
		return frequency_matrix;
	}

	// simulate a path given certain path length
	public List<Integer> simulateOnePath(int pathLength){
		List<Integer> path = new ArrayList<Integer>();
		int initState = nextState(init_dist);
		path.add(initState);
		int current_state = initState;
		for(int i=0; i<pathLength-1; i++){
			int ns = nextState(current_state);
			path.add(ns);
			current_state = ns;
		}
		return path;
	}

	
	/**
	 * @param dis a discrete distribution
	 * @return a next state drawn from the distribution
	 */
	public int nextState(RealVector dis){

		double rn = RandomUtil.nextDouble();
		double acc = dis.getEntry(0);

		for(int i=0; i<dis.getDimension(); i++){

			if(acc>=rn)
				return i;

			if(i==dis.getDimension()-1)
				return i;

			if(dis.getEntry(i+1)!=0)	
				acc += dis.getEntry(i+1);
		}
		return -1;
	}

	/**
	 * @param current_state current state
	 * @return next state drawn from the distribution of the current state
	 */
	public int nextState(int current_state){
		RealVector dis = transitionMatrix.getRowVector((current_state));
		return nextState(dis);
	}
	
	public double computeBoundedReachability(int bounded_step, int target_state){

		RealMatrix adapted_matrix = adaptMatrixForReach(transitionMatrix, target_state);
		RealMatrix adapted_matrix_copy = adapted_matrix.copy();
		for(int i=0; i<bounded_step; i++){
			adapted_matrix = adapted_matrix.multiply(adapted_matrix_copy);
		}
		RealVector reach = adapted_matrix.preMultiply(init_dist);
		return reach.getEntry(target_state);
	}
	
	private RealMatrix adaptMatrixForReach(RealMatrix orig_matrix, int target_state){
		
		RealMatrix adapted_matrix = orig_matrix.copy(); // don't change the original matrix
		int matrix_size = orig_matrix.getColumnDimension();
		for(int i=0; i<matrix_size; i++){
			adapted_matrix.setEntry(target_state, i, 0);
		}
		adapted_matrix.setEntry(target_state, target_state, 1);
		return adapted_matrix;
	}

	public RealVector getInit_dist() {
		return init_dist;
	}
}
