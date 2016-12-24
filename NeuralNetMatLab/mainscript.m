%ostruk - 47 primary components
rand() # this is just to initialize p-r gen
rndstate = rand("state");
save rndstate.txt rndstate

load rndstate.txt 
rand("state", rndstate);


%left for me slides 24/34
%most difficult are implemented 
%left with adding few functions - to compute training and validation set (9)
%10 compute classification error on validation set and 
%11. stop when error on validation increases
%error two times in a row (two epochs should end worse than before)
%if inprovement then continue learning

% xor data set%tset = [-1 1; 1 1; 1 -1; -1 -1];%tslb = [1; 2; 1; 2];%%res = anncls(tset, hidl, outl);%cmx = confMx(tslb, res)%compErrors(cmx)% classifier is ready; now time for training% we'll need:%	derivative of the activation function%	backprop function which performs iterative backpropagation training%plot(x, actdf(x))