dtmc 
 
module rmc
s:[0..4] init 0; 
[]s=0 -> 0.99:(s'=1) + 0.01 :(s'=2);
[]s=1 -> 0.992 :(s'=2) + 0.003 :(s'=3) + 0.005 :(s'=4);
[]s=2 -> 0.98 :(s'=1) + 0.01 :(s'=3) + 0.01 :(s'=4);
[]s=3 -> 0.4 :(s'=1) + 0.13 :(s'=2) + 0.47 :(s'=4);
[]s=4 -> 0.42 :(s'=1) + 0.2 :(s'=2) + 0.38 :(s'=3);
endmodule 

