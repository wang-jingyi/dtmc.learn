dtmc 
 
module rmc
s:[0..10] init 0; 
[]s=0 -> 0.1111111111111111:(s'=1) + 0.1111111111111111 :(s'=3) + 0.1111111111111111 :(s'=4) + 0.1111111111111111 :(s'=5) + 0.1111111111111111 :(s'=6) + 0.1111111111111111 :(s'=7) + 0.1111111111111111 :(s'=8) + 0.1111111111111111 :(s'=9) + 0.1111111111111111 :(s'=10);
[]s=1 -> 9.050592813829306E-5 :(s'=1) + 0.03439225269255136 :(s'=2) + 0.02787582586659426 :(s'=3) + 0.024074576884785953 :(s'=4) + 0.01719612634627568 :(s'=5) + 0.013847407005158838 :(s'=6) + 0.009865146167073943 :(s'=7) + 0.012942347723775907 :(s'=8) + 0.8497601592904335 :(s'=9) + 0.009955652095212236 :(s'=10);
[]s=2 -> 2.3919324900973993E-6 :(s'=1) + 0.2101814998373486 :(s'=2) + 0.7897993647027306 :(s'=3) + 2.3919324900973993E-6 :(s'=4) + 2.3919324900973993E-6 :(s'=5) + 2.3919324900973993E-6 :(s'=6) + 2.3919324900973993E-6 :(s'=7) + 2.3919324900973993E-6 :(s'=8) + 2.3919324900973993E-6 :(s'=9) + 2.3919324900973993E-6 :(s'=10);
[]s=3 -> 2.9536164079298693E-6 :(s'=1) + 0.23824460669643913 :(s'=2) + 2.9536164079298693E-6 :(s'=3) + 0.7617317643722974 :(s'=4) + 2.9536164079298693E-6 :(s'=5) + 2.9536164079298693E-6 :(s'=6) + 2.9536164079298693E-6 :(s'=7) + 2.9536164079298693E-6 :(s'=8) + 2.9536164079298693E-6 :(s'=9) + 2.9536164079298693E-6 :(s'=10);
[]s=4 -> 3.74251497005988E-6 :(s'=1) + 0.20721556886227546 :(s'=2) + 3.74251497005988E-6 :(s'=3) + 3.74251497005988E-6 :(s'=4) + 0.792754491017964 :(s'=5) + 3.74251497005988E-6 :(s'=6) + 3.74251497005988E-6 :(s'=7) + 3.74251497005988E-6 :(s'=8) + 3.74251497005988E-6 :(s'=9) + 3.74251497005988E-6 :(s'=10);
[]s=5 -> 4.514530014852804E-6 :(s'=1) + 0.14728654173457273 :(s'=2) + 4.514530014852804E-6 :(s'=3) + 4.514530014852804E-6 :(s'=4) + 4.514530014852804E-6 :(s'=5) + 0.8526773420253084 :(s'=6) + 4.514530014852804E-6 :(s'=7) + 4.514530014852804E-6 :(s'=8) + 4.514530014852804E-6 :(s'=9) + 4.514530014852804E-6 :(s'=10);
[]s=6 -> 5.030560655985109E-6 :(s'=1) + 0.1601730512865659 :(s'=2) + 5.030560655985109E-6 :(s'=3) + 5.030560655985109E-6 :(s'=4) + 5.030560655985109E-6 :(s'=5) + 5.030560655985109E-6 :(s'=6) + 0.8397867042281862 :(s'=7) + 5.030560655985109E-6 :(s'=8) + 5.030560655985109E-6 :(s'=9) + 5.030560655985109E-6 :(s'=10);
[]s=7 -> 5.653678283090979E-6 :(s'=1) + 0.08594721725954907 :(s'=2) + 5.653678283090979E-6 :(s'=3) + 5.653678283090979E-6 :(s'=4) + 5.653678283090979E-6 :(s'=5) + 5.653678283090979E-6 :(s'=6) + 5.653678283090979E-6 :(s'=7) + 0.9140075533141863 :(s'=8) + 5.653678283090979E-6 :(s'=9) + 5.653678283090979E-6 :(s'=10);
[]s=8 -> 5.820145852855072E-6 :(s'=1) + 0.07616824877631434 :(s'=2) + 5.820145852855072E-6 :(s'=3) + 5.820145852855072E-6 :(s'=4) + 5.820145852855072E-6 :(s'=5) + 5.820145852855072E-6 :(s'=6) + 5.820145852855072E-6 :(s'=7) + 5.820145852855072E-6 :(s'=8) + 5.820145852855072E-6 :(s'=9) + 0.9237851900568628 :(s'=10);
[]s=9 -> 1.2614554344824645E-7 :(s'=1) + 0.011043285455633288 :(s'=2) + 1.2614554344824645E-7 :(s'=3) + 1.2614554344824645E-7 :(s'=4) + 1.2614554344824645E-7 :(s'=5) + 1.2614554344824645E-7 :(s'=6) + 1.2614554344824645E-7 :(s'=7) + 1.2614554344824645E-7 :(s'=8) + 0.9889557053800191 :(s'=9) + 1.2614554344824645E-7 :(s'=10);
[]s=10 -> 5.921539600296077E-6 :(s'=1) + 0.1015840118430792 :(s'=2) + 5.921539600296077E-6 :(s'=3) + 5.921539600296077E-6 :(s'=4) + 5.921539600296077E-6 :(s'=5) + 5.921539600296077E-6 :(s'=6) + 5.921539600296077E-6 :(s'=7) + 5.921539600296077E-6 :(s'=8) + 0.8983686158401184 :(s'=9) + 5.921539600296077E-6 :(s'=10);
endmodule 

