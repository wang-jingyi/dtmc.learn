dtmc 
 
module rmc
s:[0..4] init 0; 
[]s=0 -> 0.9:(s'=1) + 0.1 :(s'=2);
[]s=1 -> 0.99 :(s'=1) + 0.009 :(s'=2) + 0.001 :(s'=3);
[]s=2 -> 0.05 :(s'=3) + 0.95 :(s'=4);
[]s=3 -> 1.0 :(s'=4);
[]s=4 -> 1.0 :(s'=4);
endmodule 


