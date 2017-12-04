package dtmc.learn.estimator;

import org.apache.commons.math3.linear.RealMatrix;

public interface Estimator{
	
	public RealMatrix estimate(RealMatrix frequencyMatrix);

}
