dtmc 
 
module rmc
s:[0..8] init 0; 
[]s=0 -> 0.25:(s'=1) + 0.25 :(s'=2) + 0.25 :(s'=3) + 0.25 :(s'=4);
[]s=1 -> 0.405091204284269 :(s'=1) + 6.058072684756072E-6 :(s'=2) + 0.021518274176253568 :(s'=3) + 0.38989755799090076 :(s'=4) + 0.16983806771713647 :(s'=5) + 0.011286189411700561 :(s'=6) + 0.0022414868933597464 :(s'=7) + 1.2116145369512143E-4 :(s'=8);
[]s=2 -> 0.5494759734400666 :(s'=1) + 0.0763019688591722 :(s'=2) + 0.17800707956412096 :(s'=3) + 0.056543969645790434 :(s'=4) + 0.027554774078615552 :(s'=5) + 0.10105730745205099 :(s'=6) + 0.011035791129722602 :(s'=7) + 2.3135830460634384E-5 :(s'=8);
[]s=3 -> 0.36408697961230935 :(s'=1) + 0.5584633995220252 :(s'=2) + 0.01466379488389933 :(s'=3) + 0.049803794293806984 :(s'=4) + 2.9504617472634466E-5 :(s'=5) + 0.011300268492019 :(s'=6) + 0.0015932493435222613 :(s'=7) + 5.900923494526893E-5 :(s'=8);
[]s=4 -> 0.9218156553960166 :(s'=1) + 0.07061470257394296 :(s'=2) + 0.002831998941308807 :(s'=3) + 4.2347647720505525E-4 :(s'=4) + 8.998875140607424E-4 :(s'=5) + 1.3233639912657977E-5 :(s'=6) + 0.002183550585588566 :(s'=7) + 0.001217494871964534 :(s'=8);
[]s=5 -> 3.994407829039345E-5 :(s'=1) + 0.2639904134212103 :(s'=2) + 0.49978030756940284 :(s'=3) + 0.2170161773517076 :(s'=4) + 0.00878769722388656 :(s'=5) + 0.00219692430597164 :(s'=6) + 0.0033553025763930497 :(s'=7) + 0.004833233473137607 :(s'=8);
[]s=6 -> 0.6641916976037799 :(s'=1) + 0.20722240971987851 :(s'=2) + 0.10664866689166386 :(s'=3) + 0.015862301721228485 :(s'=4) + 1.6874789065136686E-4 :(s'=5) + 0.0010124873439082012 :(s'=6) + 0.0010124873439082012 :(s'=7) + 0.0038812014849814377 :(s'=8);
[]s=7 -> 0.6093155893536122 :(s'=1) + 9.505703422053232E-4 :(s'=2) + 0.1188212927756654 :(s'=3) + 0.10836501901140684 :(s'=4) + 0.03136882129277566 :(s'=5) + 0.08650190114068441 :(s'=6) + 0.03326996197718631 :(s'=7) + 0.011406844106463879 :(s'=8);
[]s=8 -> 0.03986710963455149 :(s'=1) + 0.3687707641196013 :(s'=2) + 0.0033222591362126247 :(s'=3) + 0.059800664451827246 :(s'=4) + 0.10631229235880399 :(s'=5) + 0.0033222591362126247 :(s'=6) + 0.11627906976744186 :(s'=7) + 0.3023255813953488 :(s'=8);
endmodule 


