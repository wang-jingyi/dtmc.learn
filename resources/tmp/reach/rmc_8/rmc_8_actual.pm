dtmc 
 
module rmc
s:[0..8] init 0; 
[]s=0 -> 0.25:(s'=1) + 0.25 :(s'=2) + 0.25 :(s'=3) + 0.25 :(s'=4);
[]s=1 -> 0.40416811650774065 :(s'=1) + 0.021550623955638327 :(s'=3) + 0.39206024445120385 :(s'=4) + 0.16851547053122234 :(s'=5) + 0.011154962153315314 :(s'=6) + 0.0024298363598169973 :(s'=7) + 1.2074604106238063E-4 :(s'=8);
[]s=2 -> 0.5511387283947602 :(s'=1) + 0.07627205173239655 :(s'=2) + 0.17381917833753616 :(s'=3) + 0.05673887761879957 :(s'=4) + 0.028779352449662784 :(s'=5) + 0.10151770691857145 :(s'=6) + 0.011734104548273283 :(s'=7);
[]s=3 -> 0.364690103228827 :(s'=1) + 0.5579365913809033 :(s'=2) + 0.01429401747057037 :(s'=3) + 0.05026099631016114 :(s'=4) + 0.01096951198194132 :(s'=6) + 0.0017508421058630179 :(s'=7) + 9.79375217338152E-5 :(s'=8);
[]s=4 -> 0.9223203902018513 :(s'=1) + 0.07010882820773306 :(s'=2) + 0.002753843593255394 :(s'=3) + 3.7448106680993586E-4 :(s'=4) + 9.453445390541147E-4 :(s'=5) + 0.0022414334846988415 :(s'=7) + 0.0012556789065972795 :(s'=8);
[]s=5 -> 0.25896424458302514 :(s'=2) + 0.49940966543626875 :(s'=3) + 0.2218240492413434 :(s'=4) + 0.008856154990689962 :(s'=5) + 0.0019762732959378326 :(s'=6) + 0.00396813815406519 :(s'=7) + 0.005001474298669706 :(s'=8);
[]s=6 -> 0.6695250711173422 :(s'=1) + 0.20351900686368396 :(s'=2) + 0.10676510135609275 :(s'=3) + 0.014483539877455848 :(s'=4) + 9.499251147787595E-4 :(s'=6) + 6.509478346025311E-4 :(s'=7) + 0.00410640783604399 :(s'=8);
[]s=7 -> 0.6047669871875923 :(s'=1) + 0.12881773898511442 :(s'=3) + 0.09856157954649186 :(s'=4) + 0.032268544561761654 :(s'=5) + 0.08678348463086481 :(s'=6) + 0.03583906584582469 :(s'=7) + 0.012962599242350326 :(s'=8);
[]s=8 -> 0.026463226946533025 :(s'=1) + 0.3902754993351494 :(s'=2) + 0.0642589158990829 :(s'=4) + 0.12034101529113594 :(s'=5) + 0.0027182327985708927 :(s'=6) + 0.1258928694804323 :(s'=7) + 0.2700502402490955 :(s'=8);
endmodule 


