dtmc 
 
module rmc
s:[0..16] init 0; 
[]s=0 -> 0.125:(s'=1) + 0.125 :(s'=2) + 0.125 :(s'=3) + 0.125 :(s'=4) + 0.125 :(s'=5) + 0.125 :(s'=6) + 0.125 :(s'=7) + 0.125 :(s'=8);
[]s=1 -> 0.5854040312899658 :(s'=1) + 0.16792856974727938 :(s'=2) + 3.923014758381521E-6 :(s'=3) + 3.923014758381521E-6 :(s'=4) + 0.12163307258361906 :(s'=5) + 0.05787623673040258 :(s'=6) + 0.048413925133186354 :(s'=7) + 0.0016319741394867128 :(s'=8) + 0.0018948161282982747 :(s'=9) + 0.004009321083065914 :(s'=10) + 3.923014758381521E-6 :(s'=11) + 0.001408362298258966 :(s'=12) + 0.007775415251112174 :(s'=13) + 0.00139267023922544 :(s'=14) + 6.119903023075173E-4 :(s'=15) + 7.846029516763043E-6 :(s'=16);
[]s=2 -> 0.4196168417924739 :(s'=1) + 8.25416216126982E-6 :(s'=2) + 0.43951762676329537 :(s'=3) + 8.25416216126982E-6 :(s'=4) + 0.010598344215070448 :(s'=5) + 8.25416216126982E-6 :(s'=6) + 0.08993735090919597 :(s'=7) + 0.029087667456314848 :(s'=8) + 0.0028724484321218974 :(s'=9) + 0.005612830269663477 :(s'=10) + 0.0025010111348647557 :(s'=11) + 5.777913512888874E-5 :(s'=12) + 9.904994593523785E-5 :(s'=13) + 1.650832432253964E-5 :(s'=14) + 8.25416216126982E-6 :(s'=15) + 4.9524972967618924E-5 :(s'=16);
[]s=3 -> 0.29637856843655197 :(s'=1) + 0.0626166207588124 :(s'=2) + 1.269341592515962E-5 :(s'=3) + 0.39131262614082074 :(s'=4) + 0.17549916858125691 :(s'=5) + 0.010586308881583123 :(s'=6) + 0.018760868737385916 :(s'=7) + 0.02532336477069344 :(s'=8) + 0.012858430332186695 :(s'=9) + 1.269341592515962E-5 :(s'=10) + 0.006511722369606885 :(s'=11) + 3.808024777547886E-5 :(s'=12) + 5.077366370063848E-5 :(s'=13) + 1.269341592515962E-5 :(s'=14) + 1.269341592515962E-5 :(s'=15) + 1.269341592515962E-5 :(s'=16);
[]s=4 -> 9.846396218983852E-6 :(s'=1) + 0.34016345017723515 :(s'=2) + 0.10235328869633714 :(s'=3) + 0.5368550610476566 :(s'=4) + 9.846396218983852E-6 :(s'=5) + 0.00385978731784167 :(s'=6) + 0.0037120913745569122 :(s'=7) + 0.0031902323749507682 :(s'=8) + 4.1354864119732177E-4 :(s'=9) + 0.0082315872390705 :(s'=10) + 4.2339503741630564E-4 :(s'=11) + 5.809373769200473E-4 :(s'=12) + 1.1815675462780622E-4 :(s'=13) + 9.846396218983852E-6 :(s'=14) + 9.846396218983852E-6 :(s'=15) + 5.907837731390311E-5 :(s'=16);
[]s=5 -> 1.592889341977413E-5 :(s'=1) + 1.592889341977413E-5 :(s'=2) + 0.005957406138995524 :(s'=3) + 0.1100208668503799 :(s'=4) + 0.07593303493206327 :(s'=5) + 0.7645550263623186 :(s'=6) + 0.01817486739196228 :(s'=7) + 0.02132878828907756 :(s'=8) + 3.6636454865480496E-4 :(s'=9) + 0.0010353780722853183 :(s'=10) + 6.21226843371191E-4 :(s'=11) + 7.805157775689323E-4 :(s'=12) + 3.504356552350308E-4 :(s'=13) + 1.592889341977413E-5 :(s'=14) + 3.345067618152567E-4 :(s'=15) + 4.93795696012998E-4 :(s'=16);
[]s=6 -> 0.4651846048379199 :(s'=1) + 0.20261062999286483 :(s'=2) + 1.3990514431215636E-5 :(s'=3) + 0.1335114792170908 :(s'=4) + 0.09063055248541489 :(s'=5) + 1.3990514431215636E-5 :(s'=6) + 0.10452313331561201 :(s'=7) + 0.0018887194482141109 :(s'=8) + 8.534213803041538E-4 :(s'=9) + 1.3990514431215636E-5 :(s'=10) + 4.3370594736768473E-4 :(s'=11) + 1.8187668760580327E-4 :(s'=12) + 2.7981028862431273E-5 :(s'=13) + 4.197154329364691E-5 :(s'=14) + 4.197154329364691E-5 :(s'=15) + 2.7981028862431273E-5 :(s'=16);
[]s=7 -> 0.1858194580045914 :(s'=1) + 0.28266089664089505 :(s'=2) + 0.3051956619257461 :(s'=3) + 2.6387312979919254E-5 :(s'=4) + 0.07087632266406312 :(s'=5) + 0.1519909227643349 :(s'=6) + 0.0017151753436947515 :(s'=7) + 6.860701374779006E-4 :(s'=8) + 2.6387312979919254E-5 :(s'=9) + 7.916193893975777E-5 :(s'=10) + 3.9580969469878884E-4 :(s'=11) + 2.6387312979919254E-5 :(s'=12) + 4.2219700767870806E-4 :(s'=13) + 2.6387312979919254E-5 :(s'=14) + 2.6387312979919254E-5 :(s'=15) + 2.6387312979919254E-5 :(s'=16);
[]s=8 -> 7.375175160410059E-5 :(s'=1) + 0.904712736927502 :(s'=2) + 0.06475403790840033 :(s'=3) + 0.014971605575632421 :(s'=4) + 0.013939081053175014 :(s'=5) + 6.637657644369053E-4 :(s'=6) + 7.375175160410059E-5 :(s'=7) + 1.4750350320820118E-4 :(s'=8) + 7.375175160410059E-5 :(s'=9) + 1.4750350320820118E-4 :(s'=10) + 7.375175160410059E-5 :(s'=11) + 7.375175160410059E-5 :(s'=12) + 7.375175160410059E-5 :(s'=13) + 7.375175160410059E-5 :(s'=14) + 7.375175160410059E-5 :(s'=15) + 7.375175160410059E-5 :(s'=16);
[]s=9 -> 5.382131324004305E-4 :(s'=1) + 0.8552206673842842 :(s'=2) + 0.13509149623250807 :(s'=3) + 5.382131324004305E-4 :(s'=4) + 5.382131324004305E-4 :(s'=5) + 0.0016146393972012918 :(s'=6) + 5.382131324004305E-4 :(s'=7) + 5.382131324004305E-4 :(s'=8) + 5.382131324004305E-4 :(s'=9) + 5.382131324004305E-4 :(s'=10) + 5.382131324004305E-4 :(s'=11) + 5.382131324004305E-4 :(s'=12) + 5.382131324004305E-4 :(s'=13) + 5.382131324004305E-4 :(s'=14) + 5.382131324004305E-4 :(s'=15) + 0.0016146393972012918 :(s'=16);
[]s=10 -> 0.6158586688578471 :(s'=1) + 0.2198027937551356 :(s'=2) + 0.14585045193097781 :(s'=3) + 4.108463434675431E-4 :(s'=4) + 0.0016433853738701725 :(s'=5) + 4.108463434675431E-4 :(s'=6) + 0.006984387838948234 :(s'=7) + 0.003286770747740345 :(s'=8) + 0.0016433853738701725 :(s'=9) + 0.0012325390304026294 :(s'=10) + 4.108463434675431E-4 :(s'=11) + 4.108463434675431E-4 :(s'=12) + 8.216926869350862E-4 :(s'=13) + 4.108463434675431E-4 :(s'=14) + 4.108463434675431E-4 :(s'=15) + 4.108463434675431E-4 :(s'=16);
[]s=11 -> 0.463768115942029 :(s'=1) + 0.13712374581939799 :(s'=2) + 0.13489409141583056 :(s'=3) + 0.0011148272017837235 :(s'=4) + 0.08138238573021182 :(s'=5) + 0.0011148272017837235 :(s'=6) + 0.14938684503901895 :(s'=7) + 0.0011148272017837235 :(s'=8) + 0.004459308807134894 :(s'=9) + 0.0011148272017837235 :(s'=10) + 0.0011148272017837235 :(s'=11) + 0.012263099219620958 :(s'=12) + 0.007803790412486065 :(s'=13) + 0.0011148272017837235 :(s'=14) + 0.0011148272017837235 :(s'=15) + 0.0011148272017837235 :(s'=16);
[]s=12 -> 0.40461215932914046 :(s'=1) + 0.5660377358490566 :(s'=2) + 0.0020964360587002098 :(s'=3) + 0.0020964360587002098 :(s'=4) + 0.0020964360587002098 :(s'=5) + 0.0020964360587002098 :(s'=6) + 0.0020964360587002098 :(s'=7) + 0.0020964360587002098 :(s'=8) + 0.0020964360587002098 :(s'=9) + 0.0020964360587002098 :(s'=10) + 0.0020964360587002098 :(s'=11) + 0.0020964360587002098 :(s'=12) + 0.0020964360587002098 :(s'=13) + 0.0020964360587002098 :(s'=14) + 0.0020964360587002098 :(s'=15) + 0.0020964360587002098 :(s'=16);
[]s=13 -> 0.3888888888888889 :(s'=1) + 0.21436058700209643 :(s'=2) + 0.16614255765199162 :(s'=3) + 5.241090146750524E-4 :(s'=4) + 0.18343815513626835 :(s'=5) + 0.03878406708595388 :(s'=6) + 5.241090146750524E-4 :(s'=7) + 5.241090146750524E-4 :(s'=8) + 0.0015723270440251573 :(s'=9) + 5.241090146750524E-4 :(s'=10) + 0.0010482180293501049 :(s'=11) + 0.0015723270440251573 :(s'=12) + 5.241090146750524E-4 :(s'=13) + 5.241090146750524E-4 :(s'=14) + 5.241090146750524E-4 :(s'=15) + 5.241090146750524E-4 :(s'=16);
[]s=14 -> 0.12058823529411765 :(s'=1) + 0.5205882352941177 :(s'=2) + 0.11176470588235295 :(s'=3) + 0.05588235294117647 :(s'=4) + 0.03823529411764706 :(s'=5) + 0.11764705882352941 :(s'=6) + 0.0029411764705882353 :(s'=7) + 0.0058823529411764705 :(s'=8) + 0.0029411764705882353 :(s'=9) + 0.0058823529411764705 :(s'=10) + 0.0029411764705882353 :(s'=11) + 0.0029411764705882353 :(s'=12) + 0.0029411764705882353 :(s'=13) + 0.0029411764705882353 :(s'=14) + 0.0029411764705882353 :(s'=15) + 0.0029411764705882353 :(s'=16);
[]s=15 -> 0.7471264367816092 :(s'=1) + 0.005747126436781609 :(s'=2) + 0.005747126436781609 :(s'=3) + 0.12643678160919541 :(s'=4) + 0.05172413793103448 :(s'=5) + 0.005747126436781609 :(s'=6) + 0.005747126436781609 :(s'=7) + 0.005747126436781609 :(s'=8) + 0.005747126436781609 :(s'=9) + 0.005747126436781609 :(s'=10) + 0.005747126436781609 :(s'=11) + 0.005747126436781609 :(s'=12) + 0.005747126436781609 :(s'=13) + 0.005747126436781609 :(s'=14) + 0.005747126436781609 :(s'=15) + 0.005747126436781609 :(s'=16);
[]s=16 -> 0.017241379310344827 :(s'=1) + 0.20689655172413793 :(s'=2) + 0.39655172413793105 :(s'=3) + 0.08620689655172414 :(s'=4) + 0.10344827586206896 :(s'=5) + 0.017241379310344827 :(s'=6) + 0.017241379310344827 :(s'=7) + 0.017241379310344827 :(s'=8) + 0.017241379310344827 :(s'=9) + 0.017241379310344827 :(s'=10) + 0.017241379310344827 :(s'=11) + 0.017241379310344827 :(s'=12) + 0.017241379310344827 :(s'=13) + 0.017241379310344827 :(s'=14) + 0.017241379310344827 :(s'=15) + 0.017241379310344827 :(s'=16);
endmodule 


