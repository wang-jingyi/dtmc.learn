package dtmc.learn.main;

import java.io.FileNotFoundException;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.math3.linear.RealMatrix;

import dtmc.learn.utils.ExternalCaller;
import dtmc.learn.utils.FileUtil;
import dtmc.learn.utils.PrismUtil;

public class Reachability implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -5070578427041974719L;
	private static String prism_path = "/Users/jingyi/prism-4.3-osx64/bin/prism";
	private RealMatrix transitionMatrix;
	private List<Integer> initialStates;
	private List<Double> initDist;
	private List<Integer> targetStates;
	private String dirPath;
	private String fileName;
	private int boundedStep;

	/**
	 * @param tm transition matrix
	 * @param is initial states
	 * @param id initial distribution
	 * @param targetStates target states
	 * @param dirPath prism file path
	 * @param fileName prism file name
	 * @param boundedStep bounded number of steps
	 * @throws FileNotFoundException 
	 */
	public Reachability(RealMatrix tm, List<Integer> is, List<Double> id, List<Integer> targetStates, 
			String dirPath, String fileName, int boundedStep) throws FileNotFoundException {
		this.transitionMatrix = tm;
		this.initialStates = is;
		this.initDist = id;
		this.targetStates = targetStates;
		this.dirPath= dirPath;
		this.fileName = fileName;
		this.boundedStep = boundedStep;
		generatePrismFiles();
	}

	private void generatePrismFiles() throws FileNotFoundException{
		FileUtil.createDir(dirPath);
		PrismUtil.MCToPrism(transitionMatrix.getData(), initialStates, initDist, fileName, dirPath);
		PrismUtil.WritePropertyList(targetStates, dirPath, fileName, transitionMatrix.getRowDimension(), boundedStep);
	}

	public void setBoundedStep(int boundedStep) {
		this.boundedStep = boundedStep;
	}

	public double computeReachability(int i){
		String pmPath = dirPath + "/" + fileName +".pm";
		String propPath = dirPath +"/" + fileName + ".pctl";
		
		double reachp = PrismUtil.extractResultFromCommandOutput(ExternalCaller.executeCommand(new String[]{prism_path
				, pmPath, propPath, "-prop", String.valueOf(i)}));
		return reachp;
	}
	
	public List<Double> computeReachability(){
		List<Double> reachProbs = new ArrayList<Double>();
		String pmPath = dirPath + "/" + fileName +".pm";
		String propPath = dirPath + "/" + fileName +".pctl";
		for(int i=1; i<=targetStates.size(); i++){
			reachProbs.add(PrismUtil.extractResultFromCommandOutput(ExternalCaller.executeCommand(new String[]{prism_path
					, pmPath, propPath, "-prop", String.valueOf(i)})));
		}
		return reachProbs;
	}
	
	
	public static List<Double> computeReachability(String pm, String pctl, int propcount){
		List<Double> result = new ArrayList<Double>();
		for(int i=1; i<=propcount; i++){
			result.add(PrismUtil.extractResultFromCommandOutput(ExternalCaller.executeCommand(new String[]{prism_path
				, pm, pctl, "-prop", String.valueOf(i)})));
		}
		return result;
			
	}

}
