function res = actf(tact)
% sigmoid activation function
% tact - total activation 
  lambda=1;
  res=2 ./ (1+exp(-lambda*tact)) - 1;
