dtmc 
 
module rmc
s:[0..10] init 0; 
[]s=0 -> 0.1111111111111111:(s'=1) + 0.1111111111111111 :(s'=3) + 0.1111111111111111 :(s'=4) + 0.1111111111111111 :(s'=5) + 0.1111111111111111 :(s'=6) + 0.1111111111111111 :(s'=7) + 0.1111111111111111 :(s'=8) + 0.1111111111111111 :(s'=9) + 0.1111111111111111 :(s'=10);
[]s=1 -> 0.03611210923461445 :(s'=2) + 0.028509559922111405 :(s'=3) + 0.02170130680640868 :(s'=4) + 0.017233390699206895 :(s'=5) + 0.014680295780805873 :(s'=6) + 0.012339958772204935 :(s'=7) + 0.01127616922290451 :(s'=8) + 0.847722071978339 :(s'=9) + 0.01042513758340417 :(s'=10);
[]s=2 -> 0.210526315789 :(s'=2) + 0.789473684211 :(s'=3);
[]s=3 -> 0.238805970149 :(s'=2) + 0.761194029851 :(s'=4);
[]s=4 -> 0.205882352941 :(s'=2) + 0.794117647059 :(s'=5);
[]s=5 -> 0.148148148148 :(s'=2) + 0.851851851852 :(s'=6);
[]s=6 -> 0.159420289855 :(s'=2) + 0.840579710145 :(s'=7);
[]s=7 -> 0.08620689655172585 :(s'=2) + 0.9137931034482741 :(s'=8);
[]s=8 -> 0.0754716981131849 :(s'=2) + 0.924528301886815 :(s'=10);
[]s=9 -> 0.011042944785296686 :(s'=2) + 0.9889570552147033 :(s'=9);
[]s=10 -> 0.102040816327 :(s'=2) + 0.897959183673 :(s'=9);
endmodule 

