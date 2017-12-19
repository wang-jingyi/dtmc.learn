package dtmc.learn.main;

import java.io.Serializable;

public class FinalResult implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 6591998411108360225L;
	int min_visit;
	double mse;
	double avg_rrd;
	double reach_avg_rrd;

	public FinalResult(int min_visit, double mse, double avg_rrd, double reach_avg_rrd) {
		this.min_visit = min_visit;
		this.mse = mse;
		this.avg_rrd = avg_rrd;
		this.reach_avg_rrd = reach_avg_rrd;
	}
	
	public FinalResult() {
	}

	@Override
	public String toString() {
		return "FinalResult [min_visit=" + min_visit + ", mse=" + mse + ", avg_rrd=" + avg_rrd + ", reach_avg_rrd="
				+ reach_avg_rrd + "]";
	}
	
}
