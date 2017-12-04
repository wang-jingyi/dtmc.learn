package dtmc.learn.estimator;

import org.apache.commons.math3.linear.MatrixUtils;
import org.apache.commons.math3.linear.OpenMapRealMatrix;
import org.apache.commons.math3.linear.RealMatrix;
import org.apache.commons.math3.linear.SparseRealMatrix;



public class EFEstimator implements Estimator {

	
	public RealMatrix estimate(RealMatrix frequencyMatrix) {
		
		int nodeNumber = frequencyMatrix.getRowDimension();
		
		RealMatrix estrm = null;
		if(frequencyMatrix instanceof SparseRealMatrix){
			estrm = new OpenMapRealMatrix(nodeNumber, nodeNumber);
		}
		else{
			estrm = MatrixUtils.createRealMatrix(nodeNumber, nodeNumber);
		}
		
		double[] rowsums = new double[nodeNumber];
		for(int i=0; i<nodeNumber; i++){
			int rowsum = 0;
			double[] row = frequencyMatrix.getRow(i);
			for(int j=0; j<nodeNumber; j++){
				rowsum += row[j];
			}
			rowsums[i] = rowsum;
		}

		for(int i=0; i<nodeNumber; i++){
			for(int j=0; j<nodeNumber; j++){
				double fre = frequencyMatrix.getEntry(i, j);
				if(fre==0){continue;}
				double p = fre / rowsums[i];
				estrm.setEntry(i, j, p);
			}
			
		}
		return estrm;
	}

}
