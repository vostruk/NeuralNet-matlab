function [hl ol] = crann(cfeat, chn, cclass)
% generates hidden and output ANN weight matrices
% cfeat - number of features (without bias, so need cfeat+1 = nrows)
% chn - number of neurons in the hidden layer 
% cclass - number of neurons in the outpur layer (= number of classes)

% hl - hidden layer weight matrix
% ol - output layer weight matrix

% ATTENTION: we assume that constant value IS NOT INCLUDED in counts

%moving the values to 1 with variance 1 (according to best practices)
%+ 1 is for bias addition in each layea
  hl = (rand(cfeat + 1, chn) - 0.5)*sqrt(cfeat + 1);
  ol = (rand(chn + 1, cclass) - .5)*sqrt(chn + 1);
  