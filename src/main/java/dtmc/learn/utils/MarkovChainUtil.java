package dtmc.learn.utils;

import org.apache.commons.math3.linear.MatrixUtils;
import org.apache.commons.math3.linear.OpenMapRealMatrix;
import org.apache.commons.math3.linear.RealMatrix;
import org.apache.commons.math3.linear.SparseRealMatrix;

public class MarkovChainUtil {
	
	public static RealMatrix normalizeFrequency(RealMatrix frequency_matrix){
		int matrix_size = frequency_matrix.getRowDimension();
		RealMatrix transition_matrix = null;
		if(frequency_matrix instanceof SparseRealMatrix){
			transition_matrix = new OpenMapRealMatrix(matrix_size, matrix_size);
		}
		else{
			transition_matrix = MatrixUtils.createRealMatrix(matrix_size, matrix_size);
		}
		
		for(int i=0; i<matrix_size; i++){
			double row_sum = 0;
			for(int j=0; j<matrix_size; j++){
				if(frequency_matrix.getEntry(i, j)!=0) // important to reduce running time
					row_sum += frequency_matrix.getEntry(i, j);
			}
			
			for(int j=0; j<matrix_size; j++){
				if(frequency_matrix.getEntry(i, j)!=0){ // important to reduce running time
					double p = frequency_matrix.getEntry(i, j)/row_sum;
					transition_matrix.setEntry(i, j, p);
				}
			}
		}
		return transition_matrix;
	}
	
	
	/**
	 * @param frequency_matrix
	 * @return the bound matrix of each entry of the transition matrix derived from the frequency matrix 
	 * // 95% confidence interval for now
	 */
	public static RealMatrix normalizeBound(RealMatrix frequency_matrix){
		int matrix_size = frequency_matrix.getRowDimension();
		
		RealMatrix bound_matrix = null;
		if(frequency_matrix instanceof SparseRealMatrix){
			bound_matrix = new OpenMapRealMatrix(matrix_size, matrix_size);
		}
		else{
			bound_matrix = MatrixUtils.createRealMatrix(matrix_size, matrix_size);
		}
		
		for(int i=0; i<matrix_size; i++){
			double row_sum = 0;
			for(int j=0; j<matrix_size; j++){
				if(frequency_matrix.getEntry(i, j)!=0) // important to reduce time cost
					row_sum += frequency_matrix.getEntry(i, j);
			}
			
			for(int j=0; j<matrix_size; j++){
				if(frequency_matrix.getEntry(i, j)!=0){ // important to reduce time cost
					double p_ij = frequency_matrix.getEntry(i, j) / row_sum;
					bound_matrix.setEntry(i, j, 1.96*Math.sqrt(p_ij*(1-p_ij))/Math.sqrt(row_sum));
				}
			}
		}
		return bound_matrix;
	}
	
}
