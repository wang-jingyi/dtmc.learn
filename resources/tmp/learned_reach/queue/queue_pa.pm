dtmc 
 
module rmc
s:[0..11] init 0; 
[]s=0 -> 0.2:(s'=1) + 0.2 :(s'=2) + 0.2 :(s'=3) + 0.2 :(s'=4) + 0.2 :(s'=5);
[]s=1 -> 1.4224953413277571E-5 :(s'=1) + 0.9998577504658672 :(s'=2) + 1.4224953413277571E-5 :(s'=3) + 1.4224953413277571E-5 :(s'=4) + 1.4224953413277571E-5 :(s'=5) + 1.4224953413277571E-5 :(s'=6) + 1.4224953413277571E-5 :(s'=7) + 1.4224953413277571E-5 :(s'=8) + 1.4224953413277571E-5 :(s'=9) + 1.4224953413277571E-5 :(s'=10) + 1.4224953413277571E-5 :(s'=11);
[]s=2 -> 0.5302151440703908 :(s'=1) + 7.849108733703287E-6 :(s'=2) + 0.4697142139510059 :(s'=3) + 7.849108733703287E-6 :(s'=4) + 7.849108733703287E-6 :(s'=5) + 7.849108733703287E-6 :(s'=6) + 7.849108733703287E-6 :(s'=7) + 7.849108733703287E-6 :(s'=8) + 7.849108733703287E-6 :(s'=9) + 7.849108733703287E-6 :(s'=10) + 7.849108733703287E-6 :(s'=11);
[]s=3 -> 1.1516756881262237E-5 :(s'=1) + 0.6497063226995278 :(s'=2) + 1.1516756881262237E-5 :(s'=3) + 0.3501900264885408 :(s'=4) + 1.1516756881262237E-5 :(s'=5) + 1.1516756881262237E-5 :(s'=6) + 1.1516756881262237E-5 :(s'=7) + 1.1516756881262237E-5 :(s'=8) + 1.1516756881262237E-5 :(s'=9) + 1.1516756881262237E-5 :(s'=10) + 1.1516756881262237E-5 :(s'=11);
[]s=4 -> 1.747243723026925E-5 :(s'=1) + 1.747243723026925E-5 :(s'=2) + 0.4535320531860989 :(s'=3) + 1.747243723026925E-5 :(s'=4) + 0.5463106948788287 :(s'=5) + 1.747243723026925E-5 :(s'=6) + 1.747243723026925E-5 :(s'=7) + 1.747243723026925E-5 :(s'=8) + 1.747243723026925E-5 :(s'=9) + 1.747243723026925E-5 :(s'=10) + 1.747243723026925E-5 :(s'=11);
[]s=5 -> 1.4646864106394821E-5 :(s'=1) + 1.4646864106394821E-5 :(s'=2) + 1.4646864106394821E-5 :(s'=3) + 0.3022819814277763 :(s'=4) + 1.4646864106394821E-5 :(s'=5) + 0.6975861967952661 :(s'=6) + 1.4646864106394821E-5 :(s'=7) + 1.4646864106394821E-5 :(s'=8) + 1.4646864106394821E-5 :(s'=9) + 1.4646864106394821E-5 :(s'=10) + 1.4646864106394821E-5 :(s'=11);
[]s=6 -> 1.753586083540841E-5 :(s'=1) + 1.753586083540841E-5 :(s'=2) + 1.753586083540841E-5 :(s'=3) + 1.753586083540841E-5 :(s'=4) + 0.6236453547504647 :(s'=5) + 1.753586083540841E-5 :(s'=6) + 0.37619682250201664 :(s'=7) + 1.753586083540841E-5 :(s'=8) + 1.753586083540841E-5 :(s'=9) + 1.753586083540841E-5 :(s'=10) + 1.753586083540841E-5 :(s'=11);
[]s=7 -> 4.562251927551439E-5 :(s'=1) + 4.562251927551439E-5 :(s'=2) + 4.562251927551439E-5 :(s'=3) + 4.562251927551439E-5 :(s'=4) + 4.562251927551439E-5 :(s'=5) + 0.6777681463570419 :(s'=6) + 4.562251927551439E-5 :(s'=7) + 0.32182125096947856 :(s'=8) + 4.562251927551439E-5 :(s'=9) + 4.562251927551439E-5 :(s'=10) + 4.562251927551439E-5 :(s'=11);
[]s=8 -> 1.383891502906172E-4 :(s'=1) + 1.383891502906172E-4 :(s'=2) + 1.383891502906172E-4 :(s'=3) + 1.383891502906172E-4 :(s'=4) + 1.383891502906172E-4 :(s'=5) + 1.383891502906172E-4 :(s'=6) + 0.6378355936894547 :(s'=7) + 1.383891502906172E-4 :(s'=8) + 0.3609189039579297 :(s'=9) + 1.383891502906172E-4 :(s'=10) + 1.383891502906172E-4 :(s'=11);
[]s=9 -> 4.0535062829347385E-4 :(s'=1) + 4.0535062829347385E-4 :(s'=2) + 4.0535062829347385E-4 :(s'=3) + 4.0535062829347385E-4 :(s'=4) + 4.0535062829347385E-4 :(s'=5) + 4.0535062829347385E-4 :(s'=6) + 4.0535062829347385E-4 :(s'=7) + 0.5204702067288204 :(s'=8) + 4.0535062829347385E-4 :(s'=9) + 0.4758816376165383 :(s'=10) + 4.0535062829347385E-4 :(s'=11);
[]s=10 -> 8.56898029134533E-4 :(s'=1) + 8.56898029134533E-4 :(s'=2) + 8.56898029134533E-4 :(s'=3) + 8.56898029134533E-4 :(s'=4) + 8.56898029134533E-4 :(s'=5) + 8.56898029134533E-4 :(s'=6) + 8.56898029134533E-4 :(s'=7) + 8.56898029134533E-4 :(s'=8) + 0.6101113967437874 :(s'=9) + 8.56898029134533E-4 :(s'=10) + 0.38217652099400173 :(s'=11);
[]s=11 -> 0.0036101083032490976 :(s'=1) + 0.0036101083032490976 :(s'=2) + 0.0036101083032490976 :(s'=3) + 0.0036101083032490976 :(s'=4) + 0.0036101083032490976 :(s'=5) + 0.0036101083032490976 :(s'=6) + 0.0036101083032490976 :(s'=7) + 0.0036101083032490976 :(s'=8) + 0.0036101083032490976 :(s'=9) + 0.9638989169675091 :(s'=10) + 0.0036101083032490976 :(s'=11);
endmodule 


