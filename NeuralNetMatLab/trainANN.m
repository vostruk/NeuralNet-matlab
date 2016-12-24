function [finalError terr i] = trainANN(hidNeurNum = 100, learnRate = 0.01, Nbatches = 9, cpca = 47)

tic;
%prepare datasets for processing (read, PCA, normalize)
[tvec tlab tstv tstl] = prepareMNISTforProcessing(cpca);
printf('Preprocessing time: %f seconds\n', toc);


%create input weights for each layer
[hidl outl] = crann(cpca, hidNeurNum, 10);
%now need to divide train set into two
[trainSet,valSet,testSet] = dividerand(tvec, 0.9, 0.1, 0);

epochs = 0;
err = [99, 99, 99];
errPrev = [100, 100, 100];
%now backpropagate the result untill the error is lower than desired
tic;
while (err(2) > errPrev(2))
  errPrev = err;
  [hidl outl terr] = backprop(tvec(trainSet,:), tlab(trainSet,:), hidl, outl, learnRate);
  
  %now we'll use our 10% of test set to evaluate the epoch
  res = anncls(tvec(valSet,:), hidl, outl);
  cmx = confMx(tlab(valSet,:), res);
  err = compErrors(cmx);
  epochs = epochs + 1;
  printf('Next pbackprop -----\n error: %f \ntime: %f seconds\n', err(2), toc);
endwhile 
printf('Training time: %f seconds\n', toc);


 res = anncls(tstv, hidl, outl);
 cmx = confMx(tstl, res);
 finalError = compErrors(cmx);
 
endfunction