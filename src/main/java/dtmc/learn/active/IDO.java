package dtmc.learn.active;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

import org.apache.commons.math3.linear.MatrixUtils;
import org.apache.commons.math3.linear.RealMatrix;
import org.apache.commons.math3.linear.RealVector;

import gurobi.GRB;
import gurobi.GRBEnv;
import gurobi.GRBException;
import gurobi.GRBLinExpr;
import gurobi.GRBModel;
import gurobi.GRBVar;

public class IDO {

	int target;
	RealMatrix current_estimation;
	int sample_length;

	public IDO(int target, RealMatrix current_estimation, int sample_length) {
		this.target = target;
		this.current_estimation = current_estimation;
		this.sample_length = sample_length;
	}

	public RealVector computeOptimalInitialDistribution(List<Integer> valid_init_states){

		int nodeNumber = current_estimation.getRowDimension();
		HashSet<Integer> init_states = new HashSet<Integer>(valid_init_states);

		RealMatrix A = accumulatedMatrix(sample_length, current_estimation);
		RealMatrix AT = A.transpose();

		double[] ATI = AT.getRow(target); // the i-th row

		double[] optimalDistribution = new double[nodeNumber];

		GRBEnv env;

		try {
			env = new GRBEnv("optimize.initial.distribution.log");
			GRBModel  model = new GRBModel(env);

			// Create variables
			List<GRBVar> vars = new ArrayList<GRBVar>();
			for(int i=0; i<nodeNumber; i++){
				vars.add(model.addVar(0.0, 1.0, 0.0, GRB.CONTINUOUS, "x"+i));
			}
			model.update();

			GRBLinExpr obj = new GRBLinExpr();
			GRBLinExpr cst = new GRBLinExpr();

			for(int i : valid_init_states){ // only optimize over initial states
				obj.addTerm(ATI[i], vars.get(i));
				cst.addTerm(1.0, vars.get(i));
			}

			// set objective
			model.setObjective(obj, GRB.MAXIMIZE);

			//		System.out.println(model.getObjective());


			// add constraints
			model.addConstr(cst, GRB.EQUAL, 1.0, "valid distribution");

			List<GRBLinExpr> zeros = new ArrayList<GRBLinExpr>();
			for(int i=0; i<nodeNumber; i++){
				if(!init_states.contains(i)){
					GRBLinExpr newcst = new GRBLinExpr();
					newcst.addTerm(1.0, vars.get(i));
					zeros.add(newcst);
				}
			}

			for(GRBLinExpr le : zeros){
				model.addConstr(le, GRB.EQUAL, 0.0, "non initial states");
			}

			// Optimize model
			model.optimize();

			for(int i=0; i<nodeNumber; i++){
				optimalDistribution[i] = vars.get(i).get(GRB.DoubleAttr.X);
				//				System.out.println(vars.get(i).get(GRB.StringAttr.VarName) + ": " + vars.get(i).get(GRB.DoubleAttr.X));
			}

			//		System.out.println("Obj: " + model.get(GRB.DoubleAttr.ObjVal));

			// Dispose of model and environment
			model.dispose();
			env.dispose();
		} catch (GRBException e) {
			e.printStackTrace();
		}
		return MatrixUtils.createRealVector(optimalDistribution);
	}

	/**
	 * @param step	step
	 * @param estimation transition matrix
	 * @return the accumulated matrix of given step
	 */
	private RealMatrix accumulatedMatrix(int step, RealMatrix estimation){
		RealMatrix accmulated_matrix = estimation.copy();
		for(int i=0; i<step; i++){
			accmulated_matrix = accmulated_matrix.multiply(estimation);
		}
		return accmulated_matrix;
	}
}
