function [hidlw outlw terr] = backprop(tset, tslb, inihidlw, inioutlw, lr)
% derivative of sigmoid activation function
% tset - training set (every row represents a sample)
% tslb - column vector of labels 
% inihidlw - initial hidden layer weight matrix
% inioutlw - initial output layer weight matrix
% lr - learning rate

% hidlw - hidden layer weight matrix
% outlw - output layer weight matrix
% terr - total squared error of the ANN

% 1. Set output matrices to initial values
  hidlw = inihidlw;
  outlw = inioutlw;
% 2. Set total error to 0
	terr = 0;
  
% foreach sample in the training set
	for i=1:rows(tset)	
    % 3. Set desired output of the ANN
    dout = -ones(1, columns(outlw))*0.9;
    dout(tslb(i)) = 1*0.9;
    
		% 4. Propagate input forward through the ANN
    hlval = actf([tset(i,:) 1] * hidlw);
    olval = actf([hlval 1] * outlw);
    
		% 5. Adjust total error
		terr += sumsq(dout - olval);
		% 6. Compute delta error of the output layer
    dltout = (dout - olval) .* actdf(olval);
        
		% 7. Compute delta error of the hidden layer
		dlthid = dltout * outlw';
    dlthid = dlthid(1:end-1);
    
		% 8. Update output layer weights
		outlw += lr * [hlval 1]' * dltout;
    % 9. Update hidden layer weights
    hidlw += lr * [tset(i,:) 1]' * dlthid;
  end