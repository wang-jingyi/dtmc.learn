package dtmc.learn.main;

import java.io.FileNotFoundException;
import java.io.IOException;

import dtmc.learn.utils.FileUtil;

public class ReachTest {
	
	public static void main(String[] args) throws FileNotFoundException, ClassNotFoundException, IOException{
		
		String model_name = "example";
		int reach_bounded_step = 30;
		
		Reachability actual_reach = (Reachability) FileUtil.readObject(System.getProperty("user.dir")+"/resources/tmp/reach/"+model_name+"/actual_reach");
		Reachability active_reach = (Reachability) FileUtil.readObject(System.getProperty("user.dir")+"/resources/tmp/active_learned_reach/"+model_name+"/active_reach");
		Reachability active_reach_2 = (Reachability) FileUtil.readObject(System.getProperty("user.dir")+"/resources/tmp/active_learned_reach_2/"+model_name+"/active_reach_2");
		Reachability pa_reach = (Reachability) FileUtil.readObject(System.getProperty("user.dir")+"/resources/tmp/learned_reach/"+model_name+"/pa_reach");
		
		actual_reach.setBoundedStep(100);
		
	} 

}
