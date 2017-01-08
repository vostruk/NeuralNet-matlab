function [finalError terr epochs] = trainANN(hidNeurNum = 100, learnRate = 0.01, Nbatches = 9, cpca = 47, lrchange = 0)

tic;
%prepare datasets for processing (read, PCA, normalize)
[tvec tlab tstv tstl] = prepareMNISTforProcessing(cpca);
printf('Preprocessing time: %f seconds\n', toc);

%create input weights for each layer
[hidl outl] = crann(cpca, hidNeurNum, 10);
%now need to divide train set into two
[trainSet,valSet,testSet] = dividerand(tvec, 0.9, 0.1, 0);

stopCr = 2;
epochs = 0;
err = [0, 0, 0];
errPrev = [100, 100, 100];
%now backpropagate the result untill the error is lower than desired
tic;

while (stopCr>0 && epochs<70 && errPrev(2)>0.07)

  [hidl outl terr] = backprop(tvec(trainSet,:), tlab(trainSet,:), hidl, outl, learnRate);
  
  %now we'll use our 10% of test set to evaluate the epoch
  res = anncls(tvec(valSet,:), hidl, outl);
  cmx = confMx(tlab(valSet,:), res);
  err = compErrors(cmx);
  epochs = epochs + 1;
  
  if err(2) >= errPrev(2)
    stopCr = stopCr - 1;
  else 
    stopCr = 2;
  end
  
  errPrev = err; 
  if lrchange != 0 && learnRate >0.0000001
    learnRate = learnRate/sqrt(epochs)
  end
  printf('-- %i epoch -- error: %f -- time: %f seconds\n', epochs, err(2), toc);
endwhile 
printf('Training time: %f seconds\n', toc);


 res = anncls(tstv, hidl, outl);
 cmx = confMx(tstl, res);
 finalError = compErrors(cmx);
 
endfunction