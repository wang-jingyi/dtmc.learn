dtmc 
 
module rmc
s:[0..4] init 0; 
[]s=0 -> 0.9:(s'=1) + 0.1 :(s'=2);
[]s=1 -> 0.9917757009345795 :(s'=1) + 0.007476635514018692 :(s'=2) + 6.728971962616822E-4 :(s'=3) + 7.476635514018692E-5 :(s'=4);
[]s=2 -> 1.7930787161556393E-4 :(s'=1) + 1.7930787161556393E-4 :(s'=2) + 0.05379236148466918 :(s'=3) + 0.9458490227720997 :(s'=4);
[]s=3 -> 0.0032679738562091504 :(s'=1) + 0.0032679738562091504 :(s'=2) + 0.0032679738562091504 :(s'=3) + 0.9901960784313726 :(s'=4);
[]s=4 -> 9.295408068414203E-5 :(s'=1) + 9.295408068414203E-5 :(s'=2) + 9.295408068414203E-5 :(s'=3) + 0.9997211377579476 :(s'=4);
endmodule 

