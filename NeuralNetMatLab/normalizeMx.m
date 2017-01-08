function [nTr nTs] = normalizeMx(Tr, Ts)
 %function for normalizing values of the matrix A by columns
 %Tr and Ts are M x N dimentional matrixes
 %nTr nTs are normalized matrixes
 
  %m = max(max(Tr));
  m = mean(mean(Tr));
  nTr = Tr/m;
  nTs = Ts/m;
endfunction