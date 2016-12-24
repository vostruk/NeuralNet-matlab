function lab = anncls(tset, hidlw, outlw)
% simple ANN classifier
% tset - data to be classified (every row represents a sample) 
% hidlw - hidden layer weight matrix
% outlw - output layer weight matrix

% lab - classification result (index of output layer neuron with highest value)
% ATTENTION: we assume that constant value IS NOT INCLUDED in tset rows

% 1. compute total activation for the hidden layer
  hlact = [tset ones(rows(tset), 1)] * hidlw;
  
% 2. Compute answer (value) of the neurons in the hidden layer
  hlval = actf(hlact);
% 3. Compute total activation for the output layer
  olact = [hlval ones(rows(tset), 1)] * outlw;
% 4. Compute answer (value) of the neurons in the output layer
  olval = actf(olact);
% 5. Make classification decsion(s)
  %maybe we'll imporove with reject decisions or whatever
  [~, lab] = max(olval, [], 2);