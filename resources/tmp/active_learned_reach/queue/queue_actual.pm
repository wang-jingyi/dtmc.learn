dtmc 
 
module rmc
s:[0..11] init 0; 
[]s=0 -> 0.2:(s'=1) + 0.2 :(s'=2) + 0.2 :(s'=3) + 0.2 :(s'=4) + 0.2 :(s'=5);
[]s=1 -> 1.4190435646374344E-4 :(s'=1) + 0.9985809564353626 :(s'=2) + 1.4190435646374344E-4 :(s'=3) + 1.4190435646374344E-4 :(s'=4) + 1.4190435646374344E-4 :(s'=5) + 1.4190435646374344E-4 :(s'=6) + 1.4190435646374344E-4 :(s'=7) + 1.4190435646374344E-4 :(s'=8) + 1.4190435646374344E-4 :(s'=9) + 1.4190435646374344E-4 :(s'=10) + 1.4190435646374344E-4 :(s'=11);
[]s=2 -> 0.5241759950248757 :(s'=1) + 7.77363184079602E-5 :(s'=2) + 0.47512437810945274 :(s'=3) + 7.77363184079602E-5 :(s'=4) + 7.77363184079602E-5 :(s'=5) + 7.77363184079602E-5 :(s'=6) + 7.77363184079602E-5 :(s'=7) + 7.77363184079602E-5 :(s'=8) + 7.77363184079602E-5 :(s'=9) + 7.77363184079602E-5 :(s'=10) + 7.77363184079602E-5 :(s'=11);
[]s=3 -> 1.1444266422522316E-4 :(s'=1) + 0.657930876630808 :(s'=2) + 1.1444266422522316E-4 :(s'=3) + 0.34103913939116504 :(s'=4) + 1.1444266422522316E-4 :(s'=5) + 1.1444266422522316E-4 :(s'=6) + 1.1444266422522316E-4 :(s'=7) + 1.1444266422522316E-4 :(s'=8) + 1.1444266422522316E-4 :(s'=9) + 1.1444266422522316E-4 :(s'=10) + 1.1444266422522316E-4 :(s'=11);
[]s=4 -> 1.7540782318891423E-4 :(s'=1) + 1.7540782318891423E-4 :(s'=2) + 0.44711454130854233 :(s'=3) + 1.7540782318891423E-4 :(s'=4) + 0.5513067882827574 :(s'=5) + 1.7540782318891423E-4 :(s'=6) + 1.7540782318891423E-4 :(s'=7) + 1.7540782318891423E-4 :(s'=8) + 1.7540782318891423E-4 :(s'=9) + 1.7540782318891423E-4 :(s'=10) + 1.7540782318891423E-4 :(s'=11);
[]s=5 -> 1.46864444118079E-4 :(s'=1) + 1.46864444118079E-4 :(s'=2) + 1.46864444118079E-4 :(s'=3) + 0.30900279042443823 :(s'=4) + 1.46864444118079E-4 :(s'=5) + 0.689675429578499 :(s'=6) + 1.46864444118079E-4 :(s'=7) + 1.46864444118079E-4 :(s'=8) + 1.46864444118079E-4 :(s'=9) + 1.46864444118079E-4 :(s'=10) + 1.46864444118079E-4 :(s'=11);
[]s=6 -> 1.7677214071062401E-4 :(s'=1) + 1.7677214071062401E-4 :(s'=2) + 1.7677214071062401E-4 :(s'=3) + 1.7677214071062401E-4 :(s'=4) + 0.6176418596429203 :(s'=5) + 1.7677214071062401E-4 :(s'=6) + 0.38076719109068413 :(s'=7) + 1.7677214071062401E-4 :(s'=8) + 1.7677214071062401E-4 :(s'=9) + 1.7677214071062401E-4 :(s'=10) + 1.7677214071062401E-4 :(s'=11);
[]s=7 -> 4.528985507246377E-4 :(s'=1) + 4.528985507246377E-4 :(s'=2) + 4.528985507246377E-4 :(s'=3) + 4.528985507246377E-4 :(s'=4) + 4.528985507246377E-4 :(s'=5) + 0.6798007246376812 :(s'=6) + 4.528985507246377E-4 :(s'=7) + 0.3161231884057971 :(s'=8) + 4.528985507246377E-4 :(s'=9) + 4.528985507246377E-4 :(s'=10) + 4.528985507246377E-4 :(s'=11);
[]s=8 -> 0.0013774104683195593 :(s'=1) + 0.0013774104683195593 :(s'=2) + 0.0013774104683195593 :(s'=3) + 0.0013774104683195593 :(s'=4) + 0.0013774104683195593 :(s'=5) + 0.0013774104683195593 :(s'=6) + 0.6418732782369146 :(s'=7) + 0.0013774104683195593 :(s'=8) + 0.34573002754820936 :(s'=9) + 0.0013774104683195593 :(s'=10) + 0.0013774104683195593 :(s'=11);
[]s=9 -> 0.004291845493562232 :(s'=1) + 0.004291845493562232 :(s'=2) + 0.004291845493562232 :(s'=3) + 0.004291845493562232 :(s'=4) + 0.004291845493562232 :(s'=5) + 0.004291845493562232 :(s'=6) + 0.004291845493562232 :(s'=7) + 0.5364806866952789 :(s'=8) + 0.004291845493562232 :(s'=9) + 0.4248927038626609 :(s'=10) + 0.004291845493562232 :(s'=11);
[]s=10 -> 0.009345794392523364 :(s'=1) + 0.009345794392523364 :(s'=2) + 0.009345794392523364 :(s'=3) + 0.009345794392523364 :(s'=4) + 0.009345794392523364 :(s'=5) + 0.009345794392523364 :(s'=6) + 0.009345794392523364 :(s'=7) + 0.009345794392523364 :(s'=8) + 0.5327102803738317 :(s'=9) + 0.009345794392523364 :(s'=10) + 0.38317757009345793 :(s'=11);
[]s=11 -> 0.03225806451612903 :(s'=1) + 0.03225806451612903 :(s'=2) + 0.03225806451612903 :(s'=3) + 0.03225806451612903 :(s'=4) + 0.03225806451612903 :(s'=5) + 0.03225806451612903 :(s'=6) + 0.03225806451612903 :(s'=7) + 0.03225806451612903 :(s'=8) + 0.03225806451612903 :(s'=9) + 0.6774193548387096 :(s'=10) + 0.03225806451612903 :(s'=11);
endmodule 

