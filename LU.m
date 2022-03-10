function [L, U] = LU(A)
  [n,n] = size(A);
  L = eye(n);
  for j=1:n-1
    for i=j+1:n
      L(i,j) = A(i,j)/A(j,j);
      A(i,j:n) = A(i,j:n) - L(i,j)*A(j,j:n);
    endfor
  endfor
  U = triu(A);
