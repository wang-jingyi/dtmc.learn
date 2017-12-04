package dtmc.learn.utils;

import org.apache.commons.math3.random.MersenneTwister;

public class RandomUtil {
	
	public static double[] generateRandomDistribution(int entry_number){
		double[] random_nums = new double[entry_number];
		double sum = 0;
		for(int i=0; i<entry_number; i++){
			random_nums[i] = nextDouble();
			sum += random_nums[i];
		}
		for(int i=0; i<entry_number; i++){
			random_nums[i] = random_nums[i]/sum;
		}
		return random_nums;
	}
	
	public static double[] generateRareRandomDistribution(int entry_number, double rare_level){
		int rare_tran = nextInt(0, entry_number-1);
		double[] random_nums = new double[entry_number];
		
		double rare_tran_num = nextInt(1, 9) * rare_level;
		random_nums[rare_tran] = rare_tran_num;
		
		double sum = 0;
		for(int i=0; i<entry_number; i++){
			if(i!=rare_tran){
				random_nums[i] = nextDouble();
				sum += random_nums[i];
			}
			
		}
		for(int i=0; i<entry_number; i++){
			if(i!=rare_tran){
				random_nums[i] = random_nums[i]/sum*(1-rare_tran_num);
			}
		}
		return random_nums;
	}
	
	
	public static double nextDouble(){
		return new MersenneTwister().nextDouble();
	}
	
	/**
	 * @param i start
	 * @param j end
	 * @return a random number between start and end
	 */
	public static int nextInt(int i, int j){
		return i + new MersenneTwister().nextInt(j-i+1);
	}
	
}
