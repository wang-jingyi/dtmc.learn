dtmc 
 
module rmc
s:[0..4] init 0; 
[]s=0 -> 0.99:(s'=1) + 0.01 :(s'=2);
[]s=1 -> 5.099439061703213E-4 :(s'=1) + 0.9898011218765935 :(s'=2) + 0.0035696073431922487 :(s'=3) + 0.006119326874043855 :(s'=4);
[]s=2 -> 0.9763313609467456 :(s'=1) + 9.861932938856016E-4 :(s'=2) + 0.007889546351084813 :(s'=3) + 0.014792899408284023 :(s'=4);
[]s=3 -> 0.4117647058823529 :(s'=1) + 0.17647058823529413 :(s'=2) + 0.058823529411764705 :(s'=3) + 0.35294117647058826 :(s'=4);
[]s=4 -> 0.25 :(s'=1) + 0.16666666666666666 :(s'=2) + 0.5416666666666666 :(s'=3) + 0.041666666666666664 :(s'=4);
endmodule 

