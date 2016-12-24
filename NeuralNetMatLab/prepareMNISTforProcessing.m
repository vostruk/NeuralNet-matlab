function [tvec tlab tstv tstl] = prepareMNISTforProcessing(cpca=47)
%prepares data of mnistDataset

[tvec tlab tstv tstl] = readSets(); 
[mu trmx] = prepTransform(tvec, cpca);
tvec = pcaTransform(tvec, mu, trmx);
tstv = pcaTransform(tstv, mu, trmx);
tlab += 1;
tstl += 1;

%also do some NORMALIZING HERE
normTrain = normalizeMx(tvec);
normTest = normalizeMx(tstv);
tvec = normTrain;
tstv = normTest;

endfunction