dtmc 
 
module rmc
s:[0..60] init 0; 
[]s=0 -> 0.03225806451612903:(s'=1) + 0.03225806451612903 :(s'=2) + 0.03225806451612903 :(s'=3) + 0.03225806451612903 :(s'=4) + 0.03225806451612903 :(s'=5) + 0.03225806451612903 :(s'=7) + 0.03225806451612903 :(s'=9) + 0.03225806451612903 :(s'=11) + 0.03225806451612903 :(s'=13) + 0.03225806451612903 :(s'=15) + 0.03225806451612903 :(s'=17) + 0.03225806451612903 :(s'=20) + 0.03225806451612903 :(s'=21) + 0.03225806451612903 :(s'=22) + 0.03225806451612903 :(s'=23) + 0.03225806451612903 :(s'=24) + 0.03225806451612903 :(s'=26) + 0.03225806451612903 :(s'=29) + 0.03225806451612903 :(s'=32) + 0.03225806451612903 :(s'=34) + 0.03225806451612903 :(s'=35) + 0.03225806451612903 :(s'=36) + 0.03225806451612903 :(s'=37) + 0.03225806451612903 :(s'=38) + 0.03225806451612903 :(s'=39) + 0.03225806451612903 :(s'=41) + 0.03225806451612903 :(s'=44) + 0.03225806451612903 :(s'=48) + 0.03225806451612903 :(s'=53) + 0.03225806451612903 :(s'=57) + 0.03225806451612903 :(s'=58);
[]s=1 -> 0.028873917228105495 :(s'=2) + 0.028873917228105495 :(s'=3) + 0.028873917228105495 :(s'=4) + 0.028873917228105495 :(s'=5) + 0.013390802192702549 :(s'=6) + 0.028873917228105495 :(s'=7) + 0.013390802192702549 :(s'=8) + 0.028873917228105495 :(s'=9) + 0.013390802192702549 :(s'=10) + 0.028873917228105495 :(s'=11) + 0.013390802192702549 :(s'=12) + 0.028873917228105495 :(s'=13) + 0.013390802192702549 :(s'=14) + 0.028873917228105495 :(s'=15) + 0.013390802192702549 :(s'=16) + 0.028873917228105495 :(s'=17) + 0.021425283508404076 :(s'=18) + 0.013390802192702549 :(s'=19) + 0.028873917228105495 :(s'=20) + 0.028873917228105495 :(s'=21) + 0.028873917228105495 :(s'=22) + 0.028873917228105495 :(s'=23) + 0.028664685943805453 :(s'=24) + 2.092312842620398E-4 :(s'=25) + 0.028455454659605417 :(s'=26) + 2.092312842620398E-4 :(s'=27) + 2.092312842620398E-4 :(s'=28) + 0.028455454659605417 :(s'=29) + 2.092312842620398E-4 :(s'=30) + 2.092312842620398E-4 :(s'=31) + 0.028455454659605417 :(s'=32) + 2.092312842620398E-4 :(s'=33) + 0.028455454659605417 :(s'=34) + 0.028455454659605417 :(s'=35) + 0.028455454659605417 :(s'=36) + 0.028455454659605417 :(s'=37) + 0.028455454659605417 :(s'=38) + 0.028036992091105335 :(s'=39) + 4.184625685230796E-4 :(s'=40) + 0.027618529522505257 :(s'=41) + 4.184625685230796E-4 :(s'=42) + 4.184625685230796E-4 :(s'=43) + 0.02385236640580454 :(s'=44) + 4.184625685230796E-4 :(s'=45) + 4.184625685230796E-4 :(s'=46) + 0.003766163116710717 :(s'=47) + 0.018621584299303544 :(s'=48) + 4.184625685230796E-4 :(s'=49) + 0.003766163116710717 :(s'=50) + 0.018621584299303544 :(s'=51) + 0.0052307821065409954 :(s'=52) + 0.017156965309503266 :(s'=53) + 0.003766163116710717 :(s'=54) + 0.0052307821065409954 :(s'=55) + 0.018621584299303544 :(s'=56) + 0.008996945223251712 :(s'=57) + 0.016110808888103068 :(s'=58) + 0.015901577603903025 :(s'=59) + 0.0052307821065409954 :(s'=60);
[]s=2 -> 1.0 :(s'=3);
[]s=3 -> 1.0 :(s'=4);
[]s=4 -> 1.0 :(s'=5);
[]s=5 -> 1.0 :(s'=7);
[]s=6 -> 1.0 :(s'=8);
[]s=7 -> 1.0 :(s'=9);
[]s=8 -> 1.0 :(s'=10);
[]s=9 -> 1.0 :(s'=11);
[]s=10 -> 1.0 :(s'=12);
[]s=11 -> 1.0 :(s'=13);
[]s=12 -> 1.0 :(s'=14);
[]s=13 -> 1.0 :(s'=15);
[]s=14 -> 1.0 :(s'=16);
[]s=15 -> 1.0 :(s'=17);
[]s=16 -> 1.0 :(s'=19);
[]s=17 -> 1.0 :(s'=20);
[]s=18 -> 0.615384615385 :(s'=2) + 0.384615384615 :(s'=18);
[]s=19 -> 0.015384615384606155 :(s'=2) + 0.9846153846153939 :(s'=18);
[]s=20 -> 1.0 :(s'=21);
[]s=21 -> 1.0 :(s'=22);
[]s=22 -> 1.0 :(s'=23);
[]s=23 -> 0.992753623188407 :(s'=24) + 0.0072463768115929705 :(s'=25);
[]s=24 -> 0.9927007299270099 :(s'=26) + 0.007299270072990073 :(s'=28);
[]s=25 -> 1.0 :(s'=27);
[]s=26 -> 1.0 :(s'=29);
[]s=27 -> 1.0 :(s'=30);
[]s=28 -> 1.0 :(s'=31);
[]s=29 -> 1.0 :(s'=32);
[]s=30 -> 1.0 :(s'=6);
[]s=31 -> 1.0 :(s'=33);
[]s=32 -> 1.0 :(s'=34);
[]s=33 -> 1.0 :(s'=6);
[]s=34 -> 1.0 :(s'=35);
[]s=35 -> 1.0 :(s'=36);
[]s=36 -> 1.0 :(s'=37);
[]s=37 -> 1.0 :(s'=38);
[]s=38 -> 0.9852941176470985 :(s'=39) + 0.014705882352901468 :(s'=40);
[]s=39 -> 0.9850746268657045 :(s'=41) + 0.014925373134295523 :(s'=43);
[]s=40 -> 1.0 :(s'=42);
[]s=41 -> 0.863636363636 :(s'=44) + 0.136363636364 :(s'=47);
[]s=42 -> 1.0 :(s'=45);
[]s=43 -> 1.0 :(s'=46);
[]s=44 -> 0.780701754386 :(s'=48) + 0.219298245614 :(s'=52);
[]s=45 -> 1.0 :(s'=6);
[]s=46 -> 1.0 :(s'=49);
[]s=47 -> 1.0 :(s'=50);
[]s=48 -> 0.07865168539327641 :(s'=51) + 0.9213483146067236 :(s'=53);
[]s=49 -> 1.0 :(s'=6);
[]s=50 -> 1.0 :(s'=54);
[]s=51 -> 1.0 :(s'=56);
[]s=52 -> 1.0 :(s'=55);
[]s=53 -> 0.06097560975609391 :(s'=51) + 0.9390243902439062 :(s'=58);
[]s=54 -> 1.0 :(s'=6);
[]s=55 -> 1.0 :(s'=60);
[]s=56 -> 0.14606741573 :(s'=2) + 0.85393258427 :(s'=59);
[]s=57 -> 1.0 :(s'=51);
[]s=58 -> 0.441558441558 :(s'=51) + 0.558441558442 :(s'=57);
[]s=59 -> 0.802631578947 :(s'=2) + 0.197368421053 :(s'=6);
[]s=60 -> 1.0 :(s'=6);
endmodule 

