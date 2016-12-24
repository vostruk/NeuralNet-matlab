function normalizedA = normalizeMx(A)
 %function for normalizing values of the matrix A by columns
 %A is M x N dimentional matrix
 %normalizedA is normalized matrix
 
 normA = max(A) - min(A);               % this is a vector
 normA = repmat(normA, [rows(A) 1]);  % this makes it a matrix of the same size as A
 normalizedA = A./normA;  % your normalized matrix

endfunction