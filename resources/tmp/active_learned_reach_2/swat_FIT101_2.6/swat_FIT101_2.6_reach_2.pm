dtmc 
 
module rmc
s:[0..27] init 0; 
[]s=0 -> 0.05:(s'=1) + 0.05 :(s'=2) + 0.05 :(s'=4) + 0.05 :(s'=6) + 0.05 :(s'=8) + 0.05 :(s'=10) + 0.05 :(s'=12) + 0.05 :(s'=15) + 0.05 :(s'=16) + 0.05 :(s'=17) + 0.05 :(s'=18) + 0.05 :(s'=19) + 0.05 :(s'=20) + 0.05 :(s'=21) + 0.05 :(s'=22) + 0.05 :(s'=23) + 0.05 :(s'=24) + 0.05 :(s'=25) + 0.05 :(s'=26) + 0.05 :(s'=27);
[]s=1 -> 3.979307600477517E-4 :(s'=1) + 0.027457222443294866 :(s'=2) + 0.029446876243533624 :(s'=3) + 0.022284122562674095 :(s'=4) + 0.031436530043772386 :(s'=5) + 0.029048945483485872 :(s'=6) + 0.026661360923199363 :(s'=7) + 0.02825308396339037 :(s'=8) + 0.02825308396339037 :(s'=9) + 0.0238758456028651 :(s'=10) + 0.025069637883008356 :(s'=11) + 0.02825308396339037 :(s'=12) + 0.06963788300835655 :(s'=13) + 0.03064066852367688 :(s'=14) + 0.027457222443294866 :(s'=15) + 0.029446876243533624 :(s'=16) + 0.022284122562674095 :(s'=17) + 0.0238758456028651 :(s'=18) + 0.03064066852367688 :(s'=19) + 0.026661360923199363 :(s'=20) + 0.021886191802626343 :(s'=21) + 0.025069637883008356 :(s'=22) + 0.04019100676482292 :(s'=23) + 0.029048945483485872 :(s'=24) + 0.027457222443294866 :(s'=25) + 0.2817349781138082 :(s'=26) + 0.013529645841623557 :(s'=27);
[]s=2 -> 3.1459896496940525E-6 :(s'=1) + 3.1459896496940525E-6 :(s'=2) + 3.1459896496940525E-6 :(s'=3) + 0.9999182042691079 :(s'=4) + 3.1459896496940525E-6 :(s'=5) + 3.1459896496940525E-6 :(s'=6) + 3.1459896496940525E-6 :(s'=7) + 3.1459896496940525E-6 :(s'=8) + 3.1459896496940525E-6 :(s'=9) + 3.1459896496940525E-6 :(s'=10) + 3.1459896496940525E-6 :(s'=11) + 3.1459896496940525E-6 :(s'=12) + 3.1459896496940525E-6 :(s'=13) + 3.1459896496940525E-6 :(s'=14) + 3.1459896496940525E-6 :(s'=15) + 3.1459896496940525E-6 :(s'=16) + 3.1459896496940525E-6 :(s'=17) + 3.1459896496940525E-6 :(s'=18) + 3.1459896496940525E-6 :(s'=19) + 3.1459896496940525E-6 :(s'=20) + 3.1459896496940525E-6 :(s'=21) + 3.1459896496940525E-6 :(s'=22) + 3.1459896496940525E-6 :(s'=23) + 3.1459896496940525E-6 :(s'=24) + 3.1459896496940525E-6 :(s'=25) + 3.1459896496940525E-6 :(s'=26) + 3.1459896496940525E-6 :(s'=27);
[]s=3 -> 3.0256270612084354E-6 :(s'=1) + 3.0256270612084354E-6 :(s'=2) + 3.0256270612084354E-6 :(s'=3) + 3.0256270612084354E-6 :(s'=4) + 0.9999213336964086 :(s'=5) + 3.0256270612084354E-6 :(s'=6) + 3.0256270612084354E-6 :(s'=7) + 3.0256270612084354E-6 :(s'=8) + 3.0256270612084354E-6 :(s'=9) + 3.0256270612084354E-6 :(s'=10) + 3.0256270612084354E-6 :(s'=11) + 3.0256270612084354E-6 :(s'=12) + 3.0256270612084354E-6 :(s'=13) + 3.0256270612084354E-6 :(s'=14) + 3.0256270612084354E-6 :(s'=15) + 3.0256270612084354E-6 :(s'=16) + 3.0256270612084354E-6 :(s'=17) + 3.0256270612084354E-6 :(s'=18) + 3.0256270612084354E-6 :(s'=19) + 3.0256270612084354E-6 :(s'=20) + 3.0256270612084354E-6 :(s'=21) + 3.0256270612084354E-6 :(s'=22) + 3.0256270612084354E-6 :(s'=23) + 3.0256270612084354E-6 :(s'=24) + 3.0256270612084354E-6 :(s'=25) + 3.0256270612084354E-6 :(s'=26) + 3.0256270612084354E-6 :(s'=27);
[]s=4 -> 3.1458609906945433E-6 :(s'=1) + 3.1458609906945433E-6 :(s'=2) + 3.1458609906945433E-6 :(s'=3) + 3.1458609906945433E-6 :(s'=4) + 3.1458609906945433E-6 :(s'=5) + 0.999918207614242 :(s'=6) + 3.1458609906945433E-6 :(s'=7) + 3.1458609906945433E-6 :(s'=8) + 3.1458609906945433E-6 :(s'=9) + 3.1458609906945433E-6 :(s'=10) + 3.1458609906945433E-6 :(s'=11) + 3.1458609906945433E-6 :(s'=12) + 3.1458609906945433E-6 :(s'=13) + 3.1458609906945433E-6 :(s'=14) + 3.1458609906945433E-6 :(s'=15) + 3.1458609906945433E-6 :(s'=16) + 3.1458609906945433E-6 :(s'=17) + 3.1458609906945433E-6 :(s'=18) + 3.1458609906945433E-6 :(s'=19) + 3.1458609906945433E-6 :(s'=20) + 3.1458609906945433E-6 :(s'=21) + 3.1458609906945433E-6 :(s'=22) + 3.1458609906945433E-6 :(s'=23) + 3.1458609906945433E-6 :(s'=24) + 3.1458609906945433E-6 :(s'=25) + 3.1458609906945433E-6 :(s'=26) + 3.1458609906945433E-6 :(s'=27);
[]s=5 -> 3.040123550621097E-6 :(s'=1) + 3.526543318720473E-4 :(s'=2) + 3.040123550621097E-6 :(s'=3) + 3.040123550621097E-6 :(s'=4) + 3.040123550621097E-6 :(s'=5) + 3.040123550621097E-6 :(s'=6) + 0.9995713425793624 :(s'=7) + 3.040123550621097E-6 :(s'=8) + 3.040123550621097E-6 :(s'=9) + 3.040123550621097E-6 :(s'=10) + 3.040123550621097E-6 :(s'=11) + 3.040123550621097E-6 :(s'=12) + 3.040123550621097E-6 :(s'=13) + 3.040123550621097E-6 :(s'=14) + 3.040123550621097E-6 :(s'=15) + 3.040123550621097E-6 :(s'=16) + 3.040123550621097E-6 :(s'=17) + 3.040123550621097E-6 :(s'=18) + 3.040123550621097E-6 :(s'=19) + 3.040123550621097E-6 :(s'=20) + 3.040123550621097E-6 :(s'=21) + 3.040123550621097E-6 :(s'=22) + 3.040123550621097E-6 :(s'=23) + 3.040123550621097E-6 :(s'=24) + 3.040123550621097E-6 :(s'=25) + 3.040123550621097E-6 :(s'=26) + 3.040123550621097E-6 :(s'=27);
[]s=6 -> 3.146989589758437E-6 :(s'=1) + 3.146989589758437E-6 :(s'=2) + 3.146989589758437E-6 :(s'=3) + 3.146989589758437E-6 :(s'=4) + 3.146989589758437E-6 :(s'=5) + 3.146989589758437E-6 :(s'=6) + 3.146989589758437E-6 :(s'=7) + 0.9999181782706663 :(s'=8) + 3.146989589758437E-6 :(s'=9) + 3.146989589758437E-6 :(s'=10) + 3.146989589758437E-6 :(s'=11) + 3.146989589758437E-6 :(s'=12) + 3.146989589758437E-6 :(s'=13) + 3.146989589758437E-6 :(s'=14) + 3.146989589758437E-6 :(s'=15) + 3.146989589758437E-6 :(s'=16) + 3.146989589758437E-6 :(s'=17) + 3.146989589758437E-6 :(s'=18) + 3.146989589758437E-6 :(s'=19) + 3.146989589758437E-6 :(s'=20) + 3.146989589758437E-6 :(s'=21) + 3.146989589758437E-6 :(s'=22) + 3.146989589758437E-6 :(s'=23) + 3.146989589758437E-6 :(s'=24) + 3.146989589758437E-6 :(s'=25) + 3.146989589758437E-6 :(s'=26) + 3.146989589758437E-6 :(s'=27);
[]s=7 -> 3.054181174027243E-6 :(s'=1) + 3.39014110317024E-4 :(s'=2) + 3.054181174027243E-6 :(s'=3) + 3.054181174027243E-6 :(s'=4) + 3.054181174027243E-6 :(s'=5) + 3.054181174027243E-6 :(s'=6) + 3.054181174027243E-6 :(s'=7) + 3.054181174027243E-6 :(s'=8) + 0.9995846313603323 :(s'=9) + 3.054181174027243E-6 :(s'=10) + 3.054181174027243E-6 :(s'=11) + 3.054181174027243E-6 :(s'=12) + 3.054181174027243E-6 :(s'=13) + 3.054181174027243E-6 :(s'=14) + 3.054181174027243E-6 :(s'=15) + 3.054181174027243E-6 :(s'=16) + 3.054181174027243E-6 :(s'=17) + 3.054181174027243E-6 :(s'=18) + 3.054181174027243E-6 :(s'=19) + 3.054181174027243E-6 :(s'=20) + 3.054181174027243E-6 :(s'=21) + 3.054181174027243E-6 :(s'=22) + 3.054181174027243E-6 :(s'=23) + 3.054181174027243E-6 :(s'=24) + 3.054181174027243E-6 :(s'=25) + 3.054181174027243E-6 :(s'=26) + 3.054181174027243E-6 :(s'=27);
[]s=8 -> 3.1499932275145607E-6 :(s'=1) + 3.1499932275145607E-6 :(s'=2) + 3.1499932275145607E-6 :(s'=3) + 3.1499932275145607E-6 :(s'=4) + 3.1499932275145607E-6 :(s'=5) + 3.1499932275145607E-6 :(s'=6) + 3.1499932275145607E-6 :(s'=7) + 3.1499932275145607E-6 :(s'=8) + 3.1499932275145607E-6 :(s'=9) + 0.9999181001760846 :(s'=10) + 3.1499932275145607E-6 :(s'=11) + 3.1499932275145607E-6 :(s'=12) + 3.1499932275145607E-6 :(s'=13) + 3.1499932275145607E-6 :(s'=14) + 3.1499932275145607E-6 :(s'=15) + 3.1499932275145607E-6 :(s'=16) + 3.1499932275145607E-6 :(s'=17) + 3.1499932275145607E-6 :(s'=18) + 3.1499932275145607E-6 :(s'=19) + 3.1499932275145607E-6 :(s'=20) + 3.1499932275145607E-6 :(s'=21) + 3.1499932275145607E-6 :(s'=22) + 3.1499932275145607E-6 :(s'=23) + 3.1499932275145607E-6 :(s'=24) + 3.1499932275145607E-6 :(s'=25) + 3.1499932275145607E-6 :(s'=26) + 3.1499932275145607E-6 :(s'=27);
[]s=9 -> 3.0679928577126274E-6 :(s'=1) + 3.0679928577126274E-6 :(s'=2) + 3.0679928577126274E-6 :(s'=3) + 3.0679928577126274E-6 :(s'=4) + 3.0679928577126274E-6 :(s'=5) + 3.0679928577126274E-6 :(s'=6) + 3.0679928577126274E-6 :(s'=7) + 3.0679928577126274E-6 :(s'=8) + 3.0679928577126274E-6 :(s'=9) + 3.0679928577126274E-6 :(s'=10) + 0.9999202321856995 :(s'=11) + 3.0679928577126274E-6 :(s'=12) + 3.0679928577126274E-6 :(s'=13) + 3.0679928577126274E-6 :(s'=14) + 3.0679928577126274E-6 :(s'=15) + 3.0679928577126274E-6 :(s'=16) + 3.0679928577126274E-6 :(s'=17) + 3.0679928577126274E-6 :(s'=18) + 3.0679928577126274E-6 :(s'=19) + 3.0679928577126274E-6 :(s'=20) + 3.0679928577126274E-6 :(s'=21) + 3.0679928577126274E-6 :(s'=22) + 3.0679928577126274E-6 :(s'=23) + 3.0679928577126274E-6 :(s'=24) + 3.0679928577126274E-6 :(s'=25) + 3.0679928577126274E-6 :(s'=26) + 3.0679928577126274E-6 :(s'=27);
[]s=10 -> 3.154733361936249E-6 :(s'=1) + 3.154733361936249E-6 :(s'=2) + 3.154733361936249E-6 :(s'=3) + 3.154733361936249E-6 :(s'=4) + 3.154733361936249E-6 :(s'=5) + 3.154733361936249E-6 :(s'=6) + 3.154733361936249E-6 :(s'=7) + 3.154733361936249E-6 :(s'=8) + 3.154733361936249E-6 :(s'=9) + 3.154733361936249E-6 :(s'=10) + 3.154733361936249E-6 :(s'=11) + 0.9999179769325897 :(s'=12) + 3.154733361936249E-6 :(s'=13) + 3.154733361936249E-6 :(s'=14) + 3.154733361936249E-6 :(s'=15) + 3.154733361936249E-6 :(s'=16) + 3.154733361936249E-6 :(s'=17) + 3.154733361936249E-6 :(s'=18) + 3.154733361936249E-6 :(s'=19) + 3.154733361936249E-6 :(s'=20) + 3.154733361936249E-6 :(s'=21) + 3.154733361936249E-6 :(s'=22) + 3.154733361936249E-6 :(s'=23) + 3.154733361936249E-6 :(s'=24) + 3.154733361936249E-6 :(s'=25) + 3.154733361936249E-6 :(s'=26) + 3.154733361936249E-6 :(s'=27);
[]s=11 -> 3.081569135003544E-6 :(s'=1) + 3.821145727404394E-4 :(s'=2) + 3.081569135003544E-6 :(s'=3) + 3.081569135003544E-6 :(s'=4) + 3.081569135003544E-6 :(s'=5) + 3.081569135003544E-6 :(s'=6) + 3.081569135003544E-6 :(s'=7) + 3.081569135003544E-6 :(s'=8) + 3.081569135003544E-6 :(s'=9) + 3.081569135003544E-6 :(s'=10) + 3.081569135003544E-6 :(s'=11) + 3.081569135003544E-6 :(s'=12) + 3.081569135003544E-6 :(s'=13) + 0.9995408461988845 :(s'=14) + 3.081569135003544E-6 :(s'=15) + 3.081569135003544E-6 :(s'=16) + 3.081569135003544E-6 :(s'=17) + 3.081569135003544E-6 :(s'=18) + 3.081569135003544E-6 :(s'=19) + 3.081569135003544E-6 :(s'=20) + 3.081569135003544E-6 :(s'=21) + 3.081569135003544E-6 :(s'=22) + 3.081569135003544E-6 :(s'=23) + 3.081569135003544E-6 :(s'=24) + 3.081569135003544E-6 :(s'=25) + 3.081569135003544E-6 :(s'=26) + 3.081569135003544E-6 :(s'=27);
[]s=12 -> 3.1624853339742635E-6 :(s'=1) + 3.1624853339742635E-6 :(s'=2) + 3.1624853339742635E-6 :(s'=3) + 3.1624853339742635E-6 :(s'=4) + 3.1624853339742635E-6 :(s'=5) + 3.1624853339742635E-6 :(s'=6) + 3.1624853339742635E-6 :(s'=7) + 3.1624853339742635E-6 :(s'=8) + 3.1624853339742635E-6 :(s'=9) + 3.1624853339742635E-6 :(s'=10) + 3.1624853339742635E-6 :(s'=11) + 3.1624853339742635E-6 :(s'=12) + 3.1624853339742635E-6 :(s'=13) + 3.1624853339742635E-6 :(s'=14) + 0.9999177753813167 :(s'=15) + 3.1624853339742635E-6 :(s'=16) + 3.1624853339742635E-6 :(s'=17) + 3.1624853339742635E-6 :(s'=18) + 3.1624853339742635E-6 :(s'=19) + 3.1624853339742635E-6 :(s'=20) + 3.1624853339742635E-6 :(s'=21) + 3.1624853339742635E-6 :(s'=22) + 3.1624853339742635E-6 :(s'=23) + 3.1624853339742635E-6 :(s'=24) + 3.1624853339742635E-6 :(s'=25) + 3.1624853339742635E-6 :(s'=26) + 3.1624853339742635E-6 :(s'=27);
[]s=13 -> 1.183454361266012E-6 :(s'=1) + 0.374056786874071 :(s'=2) + 1.183454361266012E-6 :(s'=3) + 1.183454361266012E-6 :(s'=4) + 1.183454361266012E-6 :(s'=5) + 1.183454361266012E-6 :(s'=6) + 1.183454361266012E-6 :(s'=7) + 1.183454361266012E-6 :(s'=8) + 1.183454361266012E-6 :(s'=9) + 1.183454361266012E-6 :(s'=10) + 1.183454361266012E-6 :(s'=11) + 1.183454361266012E-6 :(s'=12) + 0.6259136267668973 :(s'=13) + 1.183454361266012E-6 :(s'=14) + 1.183454361266012E-6 :(s'=15) + 1.183454361266012E-6 :(s'=16) + 1.183454361266012E-6 :(s'=17) + 1.183454361266012E-6 :(s'=18) + 1.183454361266012E-6 :(s'=19) + 1.183454361266012E-6 :(s'=20) + 1.183454361266012E-6 :(s'=21) + 1.183454361266012E-6 :(s'=22) + 1.183454361266012E-6 :(s'=23) + 1.183454361266012E-6 :(s'=24) + 1.183454361266012E-6 :(s'=25) + 1.183454361266012E-6 :(s'=26) + 1.183454361266012E-6 :(s'=27);
[]s=14 -> 3.098085383233162E-6 :(s'=1) + 0.0036712311791312967 :(s'=2) + 3.098085383233162E-6 :(s'=3) + 3.098085383233162E-6 :(s'=4) + 3.098085383233162E-6 :(s'=5) + 3.098085383233162E-6 :(s'=6) + 3.098085383233162E-6 :(s'=7) + 3.098085383233162E-6 :(s'=8) + 3.098085383233162E-6 :(s'=9) + 3.098085383233162E-6 :(s'=10) + 3.098085383233162E-6 :(s'=11) + 3.098085383233162E-6 :(s'=12) + 0.9962513166862879 :(s'=13) + 3.098085383233162E-6 :(s'=14) + 3.098085383233162E-6 :(s'=15) + 3.098085383233162E-6 :(s'=16) + 3.098085383233162E-6 :(s'=17) + 3.098085383233162E-6 :(s'=18) + 3.098085383233162E-6 :(s'=19) + 3.098085383233162E-6 :(s'=20) + 3.098085383233162E-6 :(s'=21) + 3.098085383233162E-6 :(s'=22) + 3.098085383233162E-6 :(s'=23) + 3.098085383233162E-6 :(s'=24) + 3.098085383233162E-6 :(s'=25) + 3.098085383233162E-6 :(s'=26) + 3.098085383233162E-6 :(s'=27);
[]s=15 -> 3.1710495857023716E-6 :(s'=1) + 3.1710495857023716E-6 :(s'=2) + 3.1710495857023716E-6 :(s'=3) + 3.1710495857023716E-6 :(s'=4) + 3.1710495857023716E-6 :(s'=5) + 3.1710495857023716E-6 :(s'=6) + 3.1710495857023716E-6 :(s'=7) + 3.1710495857023716E-6 :(s'=8) + 3.1710495857023716E-6 :(s'=9) + 3.1710495857023716E-6 :(s'=10) + 3.1710495857023716E-6 :(s'=11) + 3.1710495857023716E-6 :(s'=12) + 3.1710495857023716E-6 :(s'=13) + 3.1710495857023716E-6 :(s'=14) + 3.1710495857023716E-6 :(s'=15) + 0.9999175527107718 :(s'=16) + 3.1710495857023716E-6 :(s'=17) + 3.1710495857023716E-6 :(s'=18) + 3.1710495857023716E-6 :(s'=19) + 3.1710495857023716E-6 :(s'=20) + 3.1710495857023716E-6 :(s'=21) + 3.1710495857023716E-6 :(s'=22) + 3.1710495857023716E-6 :(s'=23) + 3.1710495857023716E-6 :(s'=24) + 3.1710495857023716E-6 :(s'=25) + 3.1710495857023716E-6 :(s'=26) + 3.1710495857023716E-6 :(s'=27);
[]s=16 -> 3.1834055435824137E-6 :(s'=1) + 3.1834055435824137E-6 :(s'=2) + 3.1834055435824137E-6 :(s'=3) + 3.1834055435824137E-6 :(s'=4) + 3.1834055435824137E-6 :(s'=5) + 3.1834055435824137E-6 :(s'=6) + 3.1834055435824137E-6 :(s'=7) + 3.1834055435824137E-6 :(s'=8) + 3.1834055435824137E-6 :(s'=9) + 3.1834055435824137E-6 :(s'=10) + 3.1834055435824137E-6 :(s'=11) + 3.1834055435824137E-6 :(s'=12) + 3.1834055435824137E-6 :(s'=13) + 3.1834055435824137E-6 :(s'=14) + 3.1834055435824137E-6 :(s'=15) + 3.1834055435824137E-6 :(s'=16) + 0.9999172314558669 :(s'=17) + 3.1834055435824137E-6 :(s'=18) + 3.1834055435824137E-6 :(s'=19) + 3.1834055435824137E-6 :(s'=20) + 3.1834055435824137E-6 :(s'=21) + 3.1834055435824137E-6 :(s'=22) + 3.1834055435824137E-6 :(s'=23) + 3.1834055435824137E-6 :(s'=24) + 3.1834055435824137E-6 :(s'=25) + 3.1834055435824137E-6 :(s'=26) + 3.1834055435824137E-6 :(s'=27);
[]s=17 -> 3.1989353943007766E-6 :(s'=1) + 3.1989353943007766E-6 :(s'=2) + 3.1989353943007766E-6 :(s'=3) + 3.1989353943007766E-6 :(s'=4) + 3.1989353943007766E-6 :(s'=5) + 3.1989353943007766E-6 :(s'=6) + 3.1989353943007766E-6 :(s'=7) + 3.1989353943007766E-6 :(s'=8) + 3.1989353943007766E-6 :(s'=9) + 3.1989353943007766E-6 :(s'=10) + 3.1989353943007766E-6 :(s'=11) + 3.1989353943007766E-6 :(s'=12) + 3.1989353943007766E-6 :(s'=13) + 3.1989353943007766E-6 :(s'=14) + 3.1989353943007766E-6 :(s'=15) + 3.1989353943007766E-6 :(s'=16) + 3.1989353943007766E-6 :(s'=17) + 0.9999168276797482 :(s'=18) + 3.1989353943007766E-6 :(s'=19) + 3.1989353943007766E-6 :(s'=20) + 3.1989353943007766E-6 :(s'=21) + 3.1989353943007766E-6 :(s'=22) + 3.1989353943007766E-6 :(s'=23) + 3.1989353943007766E-6 :(s'=24) + 3.1989353943007766E-6 :(s'=25) + 3.1989353943007766E-6 :(s'=26) + 3.1989353943007766E-6 :(s'=27);
[]s=18 -> 3.2178241716516127E-6 :(s'=1) + 3.2178241716516127E-6 :(s'=2) + 3.2178241716516127E-6 :(s'=3) + 3.2178241716516127E-6 :(s'=4) + 3.2178241716516127E-6 :(s'=5) + 3.2178241716516127E-6 :(s'=6) + 3.2178241716516127E-6 :(s'=7) + 3.2178241716516127E-6 :(s'=8) + 3.2178241716516127E-6 :(s'=9) + 3.2178241716516127E-6 :(s'=10) + 3.2178241716516127E-6 :(s'=11) + 3.2178241716516127E-6 :(s'=12) + 3.2178241716516127E-6 :(s'=13) + 3.2178241716516127E-6 :(s'=14) + 3.2178241716516127E-6 :(s'=15) + 3.2178241716516127E-6 :(s'=16) + 3.2178241716516127E-6 :(s'=17) + 3.2178241716516127E-6 :(s'=18) + 0.9999163365715371 :(s'=19) + 3.2178241716516127E-6 :(s'=20) + 3.2178241716516127E-6 :(s'=21) + 3.2178241716516127E-6 :(s'=22) + 3.2178241716516127E-6 :(s'=23) + 3.2178241716516127E-6 :(s'=24) + 3.2178241716516127E-6 :(s'=25) + 3.2178241716516127E-6 :(s'=26) + 3.2178241716516127E-6 :(s'=27);
[]s=19 -> 3.239160150556164E-6 :(s'=1) + 3.239160150556164E-6 :(s'=2) + 3.239160150556164E-6 :(s'=3) + 3.239160150556164E-6 :(s'=4) + 3.239160150556164E-6 :(s'=5) + 3.239160150556164E-6 :(s'=6) + 3.239160150556164E-6 :(s'=7) + 3.239160150556164E-6 :(s'=8) + 3.239160150556164E-6 :(s'=9) + 3.239160150556164E-6 :(s'=10) + 3.239160150556164E-6 :(s'=11) + 3.239160150556164E-6 :(s'=12) + 3.239160150556164E-6 :(s'=13) + 3.239160150556164E-6 :(s'=14) + 3.239160150556164E-6 :(s'=15) + 3.239160150556164E-6 :(s'=16) + 3.239160150556164E-6 :(s'=17) + 3.239160150556164E-6 :(s'=18) + 3.239160150556164E-6 :(s'=19) + 0.9999157818360855 :(s'=20) + 3.239160150556164E-6 :(s'=21) + 3.239160150556164E-6 :(s'=22) + 3.239160150556164E-6 :(s'=23) + 3.239160150556164E-6 :(s'=24) + 3.239160150556164E-6 :(s'=25) + 3.239160150556164E-6 :(s'=26) + 3.239160150556164E-6 :(s'=27);
[]s=20 -> 3.263505200395537E-6 :(s'=1) + 3.263505200395537E-6 :(s'=2) + 3.263505200395537E-6 :(s'=3) + 3.263505200395537E-6 :(s'=4) + 3.263505200395537E-6 :(s'=5) + 3.263505200395537E-6 :(s'=6) + 3.263505200395537E-6 :(s'=7) + 3.263505200395537E-6 :(s'=8) + 3.263505200395537E-6 :(s'=9) + 3.263505200395537E-6 :(s'=10) + 3.263505200395537E-6 :(s'=11) + 3.263505200395537E-6 :(s'=12) + 3.263505200395537E-6 :(s'=13) + 3.263505200395537E-6 :(s'=14) + 3.263505200395537E-6 :(s'=15) + 3.263505200395537E-6 :(s'=16) + 3.263505200395537E-6 :(s'=17) + 3.263505200395537E-6 :(s'=18) + 3.263505200395537E-6 :(s'=19) + 3.263505200395537E-6 :(s'=20) + 0.9999151488647897 :(s'=21) + 3.263505200395537E-6 :(s'=22) + 3.263505200395537E-6 :(s'=23) + 3.263505200395537E-6 :(s'=24) + 3.263505200395537E-6 :(s'=25) + 3.263505200395537E-6 :(s'=26) + 3.263505200395537E-6 :(s'=27);
[]s=21 -> 3.2865006983813986E-6 :(s'=1) + 3.2865006983813986E-6 :(s'=2) + 0.0030564456494947007 :(s'=3) + 3.2865006983813986E-6 :(s'=4) + 3.2865006983813986E-6 :(s'=5) + 3.2865006983813986E-6 :(s'=6) + 3.2865006983813986E-6 :(s'=7) + 3.2865006983813986E-6 :(s'=8) + 3.2865006983813986E-6 :(s'=9) + 3.2865006983813986E-6 :(s'=10) + 3.2865006983813986E-6 :(s'=11) + 3.2865006983813986E-6 :(s'=12) + 3.2865006983813986E-6 :(s'=13) + 3.2865006983813986E-6 :(s'=14) + 3.2865006983813986E-6 :(s'=15) + 3.2865006983813986E-6 :(s'=16) + 3.2865006983813986E-6 :(s'=17) + 3.2865006983813986E-6 :(s'=18) + 3.2865006983813986E-6 :(s'=19) + 3.2865006983813986E-6 :(s'=20) + 3.2865006983813986E-6 :(s'=21) + 0.9968613918330458 :(s'=22) + 3.2865006983813986E-6 :(s'=23) + 3.2865006983813986E-6 :(s'=24) + 3.2865006983813986E-6 :(s'=25) + 3.2865006983813986E-6 :(s'=26) + 3.2865006983813986E-6 :(s'=27);
[]s=22 -> 3.3198547231573147E-6 :(s'=1) + 3.3198547231573147E-6 :(s'=2) + 0.015012383058117376 :(s'=3) + 3.3198547231573147E-6 :(s'=4) + 3.3198547231573147E-6 :(s'=5) + 3.3198547231573147E-6 :(s'=6) + 3.3198547231573147E-6 :(s'=7) + 3.3198547231573147E-6 :(s'=8) + 3.3198547231573147E-6 :(s'=9) + 3.3198547231573147E-6 :(s'=10) + 3.3198547231573147E-6 :(s'=11) + 3.3198547231573147E-6 :(s'=12) + 3.3198547231573147E-6 :(s'=13) + 3.3198547231573147E-6 :(s'=14) + 3.3198547231573147E-6 :(s'=15) + 3.3198547231573147E-6 :(s'=16) + 3.3198547231573147E-6 :(s'=17) + 3.3198547231573147E-6 :(s'=18) + 3.3198547231573147E-6 :(s'=19) + 3.3198547231573147E-6 :(s'=20) + 3.3198547231573147E-6 :(s'=21) + 3.3198547231573147E-6 :(s'=22) + 0.9849046205738037 :(s'=23) + 3.3198547231573147E-6 :(s'=24) + 3.3198547231573147E-6 :(s'=25) + 3.3198547231573147E-6 :(s'=26) + 3.3198547231573147E-6 :(s'=27);
[]s=23 -> 3.387924083397139E-6 :(s'=1) + 3.387924083397139E-6 :(s'=2) + 0.024020381751285718 :(s'=3) + 3.387924083397139E-6 :(s'=4) + 3.387924083397139E-6 :(s'=5) + 3.387924083397139E-6 :(s'=6) + 3.387924083397139E-6 :(s'=7) + 3.387924083397139E-6 :(s'=8) + 3.387924083397139E-6 :(s'=9) + 3.387924083397139E-6 :(s'=10) + 3.387924083397139E-6 :(s'=11) + 3.387924083397139E-6 :(s'=12) + 3.387924083397139E-6 :(s'=13) + 3.387924083397139E-6 :(s'=14) + 3.387924083397139E-6 :(s'=15) + 3.387924083397139E-6 :(s'=16) + 3.387924083397139E-6 :(s'=17) + 3.387924083397139E-6 :(s'=18) + 3.387924083397139E-6 :(s'=19) + 3.387924083397139E-6 :(s'=20) + 3.387924083397139E-6 :(s'=21) + 3.387924083397139E-6 :(s'=22) + 3.387924083397139E-6 :(s'=23) + 0.9758949201466294 :(s'=24) + 3.387924083397139E-6 :(s'=25) + 3.387924083397139E-6 :(s'=26) + 3.387924083397139E-6 :(s'=27);
[]s=24 -> 2.965968477687019E-6 :(s'=1) + 2.965968477687019E-6 :(s'=2) + 0.10644267672723175 :(s'=3) + 2.965968477687019E-6 :(s'=4) + 2.965968477687019E-6 :(s'=5) + 2.965968477687019E-6 :(s'=6) + 2.965968477687019E-6 :(s'=7) + 2.965968477687019E-6 :(s'=8) + 2.965968477687019E-6 :(s'=9) + 2.965968477687019E-6 :(s'=10) + 2.965968477687019E-6 :(s'=11) + 2.965968477687019E-6 :(s'=12) + 2.965968477687019E-6 :(s'=13) + 2.965968477687019E-6 :(s'=14) + 2.965968477687019E-6 :(s'=15) + 2.965968477687019E-6 :(s'=16) + 2.965968477687019E-6 :(s'=17) + 2.965968477687019E-6 :(s'=18) + 2.965968477687019E-6 :(s'=19) + 2.965968477687019E-6 :(s'=20) + 2.965968477687019E-6 :(s'=21) + 2.965968477687019E-6 :(s'=22) + 2.965968477687019E-6 :(s'=23) + 2.965968477687019E-6 :(s'=24) + 0.8934831740608261 :(s'=25) + 2.965968477687019E-6 :(s'=26) + 2.965968477687019E-6 :(s'=27);
[]s=25 -> 3.3160346857228126E-6 :(s'=1) + 3.3160346857228126E-6 :(s'=2) + 0.45697610797008936 :(s'=3) + 3.3160346857228126E-6 :(s'=4) + 3.3160346857228126E-6 :(s'=5) + 3.3160346857228126E-6 :(s'=6) + 3.3160346857228126E-6 :(s'=7) + 3.3160346857228126E-6 :(s'=8) + 3.3160346857228126E-6 :(s'=9) + 3.3160346857228126E-6 :(s'=10) + 3.3160346857228126E-6 :(s'=11) + 3.3160346857228126E-6 :(s'=12) + 3.3160346857228126E-6 :(s'=13) + 3.3160346857228126E-6 :(s'=14) + 3.3160346857228126E-6 :(s'=15) + 3.3160346857228126E-6 :(s'=16) + 3.3160346857228126E-6 :(s'=17) + 3.3160346857228126E-6 :(s'=18) + 3.3160346857228126E-6 :(s'=19) + 3.3160346857228126E-6 :(s'=20) + 3.3160346857228126E-6 :(s'=21) + 3.3160346857228126E-6 :(s'=22) + 3.3160346857228126E-6 :(s'=23) + 3.3160346857228126E-6 :(s'=24) + 3.3160346857228126E-6 :(s'=25) + 3.3160346857228126E-6 :(s'=26) + 0.5429409911627676 :(s'=27);
[]s=26 -> 6.187008519510732E-7 :(s'=1) + 6.187008519510732E-7 :(s'=2) + 0.008709451892915257 :(s'=3) + 6.187008519510732E-7 :(s'=4) + 6.187008519510732E-7 :(s'=5) + 6.187008519510732E-7 :(s'=6) + 6.187008519510732E-7 :(s'=7) + 6.187008519510732E-7 :(s'=8) + 6.187008519510732E-7 :(s'=9) + 6.187008519510732E-7 :(s'=10) + 6.187008519510732E-7 :(s'=11) + 6.187008519510732E-7 :(s'=12) + 6.187008519510732E-7 :(s'=13) + 6.187008519510732E-7 :(s'=14) + 6.187008519510732E-7 :(s'=15) + 6.187008519510732E-7 :(s'=16) + 6.187008519510732E-7 :(s'=17) + 6.187008519510732E-7 :(s'=18) + 6.187008519510732E-7 :(s'=19) + 6.187008519510732E-7 :(s'=20) + 6.187008519510732E-7 :(s'=21) + 6.187008519510732E-7 :(s'=22) + 6.187008519510732E-7 :(s'=23) + 6.187008519510732E-7 :(s'=24) + 6.187008519510732E-7 :(s'=25) + 0.991275080585786 :(s'=26) + 6.187008519510732E-7 :(s'=27);
[]s=27 -> 6.049423792383775E-6 :(s'=1) + 6.049423792383775E-6 :(s'=2) + 0.7989232025649556 :(s'=3) + 6.049423792383775E-6 :(s'=4) + 6.049423792383775E-6 :(s'=5) + 6.049423792383775E-6 :(s'=6) + 6.049423792383775E-6 :(s'=7) + 6.049423792383775E-6 :(s'=8) + 6.049423792383775E-6 :(s'=9) + 6.049423792383775E-6 :(s'=10) + 6.049423792383775E-6 :(s'=11) + 6.049423792383775E-6 :(s'=12) + 6.049423792383775E-6 :(s'=13) + 6.049423792383775E-6 :(s'=14) + 6.049423792383775E-6 :(s'=15) + 6.049423792383775E-6 :(s'=16) + 6.049423792383775E-6 :(s'=17) + 6.049423792383775E-6 :(s'=18) + 6.049423792383775E-6 :(s'=19) + 6.049423792383775E-6 :(s'=20) + 6.049423792383775E-6 :(s'=21) + 6.049423792383775E-6 :(s'=22) + 6.049423792383775E-6 :(s'=23) + 6.049423792383775E-6 :(s'=24) + 6.049423792383775E-6 :(s'=25) + 0.20092556184023472 :(s'=26) + 6.049423792383775E-6 :(s'=27);
endmodule 

