# dtmc.learn
active learning of dtmc

This repository implements an active learning algorithm for discrete-time Markov Chains (DTMCs).
The term 'active' means that we will actively adjust the initial distribution of the system to obtain biased samples for more accurate estimation of the transition matrix of the DTMC under learning.

This work has been submitted to IEEE Transactions on Reliability with a previous conference paper published in ICFEM 2017.

On the folder structure:

./resources/models : the models used for evaluation
./resources/results: the results of the evaluation
./resources/tmp: learned models
