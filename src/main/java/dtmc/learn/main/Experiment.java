package dtmc.learn.main;

import java.io.FileNotFoundException;
import java.io.IOException;

public interface Experiment {
	
	public ExperimentResult runExperiment(Config config) throws FileNotFoundException, ClassNotFoundException, IOException;

}
