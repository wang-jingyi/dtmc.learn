package dtmc.learn.main;

import java.io.FileNotFoundException;
import java.io.IOException;

import dtmc.learn.estimator.Estimator;

public interface Experiment {
	
	public ExperimentResult runExperiment(Config config, Estimator estimator) throws FileNotFoundException, ClassNotFoundException, IOException;

}
