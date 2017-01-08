%ostruk - 47 primary components
# this is just to initialize p-r gen
#saving the states
#rand() 
#rndstate = rand("state");
#save rndstate2.txt rndstate

#[finalError terr epochs] = trainANN(hidNeurNum = 100, learnRate = 0.01, Nbatches = 9, cpca = 47)

#1. testing optimum number of neurons state1
#load rndstate.txt 
#rand("state", rndstate);
#[finalError terr epochs] = trainANN(hidNeurNum = 30, learnRate = 0.01, Nbatches = 9, cpca = 47)

#load rndstate.txt 
#rand("state", rndstate);
#[finalError terr epochs] = trainANN(hidNeurNum = 50, learnRate = 0.01, Nbatches = 9, cpca = 47)

#load rndstate.txt 
#rand("state", rndstate);
#[finalError terr epochs] = trainANN(hidNeurNum = 80, learnRate = 0.01, Nbatches = 9, cpca = 47)

#load rndstate.txt 
#rand("state", rndstate);
#[finalError terr epochs] = trainANN(hidNeurNum = 130, learnRate = 0.01, Nbatches = 9, cpca = 47)

#load rndstate.txt 
#rand("state", rndstate);
#[finalError terr epochs] = trainANN(hidNeurNum = 150, learnRate = 0.01, Nbatches = 9, cpca = 47)

#########################################
#state2
#rand() 
#rndstate2 = rand("state");
#save rndstate2.txt rndstate2

#[finalError terr epochs] = trainANN(hidNeurNum = 100, learnRate = 0.01, Nbatches = 9, cpca = 47)
#load rndstate2.txt 
#rand("state", rndstate2);
#[finalError terr epochs] = trainANN(hidNeurNum = 30, learnRate = 0.01, Nbatches = 9, cpca = 47)

#load rndstate2.txt 
#rand("state", rndstate2);
#[finalError terr epochs] = trainANN(hidNeurNum = 50, learnRate = 0.01, Nbatches = 9, cpca = 47)

#load rndstate2.txt 
#rand("state", rndstate2);
#[finalError terr epochs] = trainANN(hidNeurNum = 80, learnRate = 0.01, Nbatches = 9, cpca = 47)

#load rndstate2.txt 
#rand("state", rndstate2);
#[finalError terr epochs] = trainANN(hidNeurNum = 130, learnRate = 0.01, Nbatches = 9, cpca = 47)

#load rndstate2.txt 
#rand("state", rndstate2);
#[finalError terr epochs] = trainANN(hidNeurNum = 150, learnRate = 0.01, Nbatches = 9, cpca = 47)



#########################################
#state3
#rand() 
#rndstate3 = rand("state");
#save rndstate3.txt rndstate3

#[finalError terr epochs] = trainANN(hidNeurNum = 100, learnRate = 0.01, Nbatches = 9, cpca = 47)
#load rndstate3.txt 
#rand("state", rndstate3);
#[finalError terr epochs] = trainANN(hidNeurNum = 30, learnRate = 0.01, Nbatches = 9, cpca = 47)

#load rndstate3.txt 
#rand("state", rndstate3);
#[finalError terr epochs] = trainANN(hidNeurNum = 50, learnRate = 0.01, Nbatches = 9, cpca = 47)

#load rndstate3.txt 
#rand("state", rndstate3);
#[finalError terr epochs] = trainANN(hidNeurNum = 80, learnRate = 0.01, Nbatches = 9, cpca = 47)

#load rndstate3.txt 
#rand("state", rndstate3);
#[finalError terr epochs] = trainANN(hidNeurNum = 130, learnRate = 0.01, Nbatches = 9, cpca = 47)

#load rndstate3.txt 
#rand("state", rndstate3);
#[finalError terr epochs] = trainANN(hidNeurNum = 150, learnRate = 0.01, Nbatches = 9, cpca = 47)

#########################checking the learning rate and target values (changes are in trainANN and backprop functions
load rndstate.txt 
rand("state", rndstate);
[finalError terr epochs] = trainANN(hidNeurNum = 60, learnRate = 0.01, Nbatches = 9, cpca = 47 )

load rndstate2.txt 
rand("state", rndstate2);
[finalError terr epochs] = trainANN(hidNeurNum = 60, learnRate = 0.01, Nbatches = 9, cpca = 47 )

load rndstate3.txt 
rand("state", rndstate3);
[finalError terr epochs] = trainANN(hidNeurNum = 60, learnRate = 0.01, Nbatches = 9, cpca = 47 )

% xor data set example%tset = [-1 1; 1 1; 1 -1; -1 -1];%tslb = [1; 2; 1; 2];%%res = anncls(tset, hidl, outl);%cmx = confMx(tslb, res)%compErrors(cmx)