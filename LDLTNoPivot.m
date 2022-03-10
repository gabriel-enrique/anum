function [L, D] = LDLTNoPivot(A)
  [n, n] = size(A);
  L = eye(n);
  for j=1:n-1
    D(j) = A(j,j);
    for i=j+1:n
      L(i,j) = A(j,i)/D(j);
      A(i,i:n) = A(i,i:n) - L(i,j)*A(j,i:n);
      A(i+1:n,i) = A(i,i+1:n);
    endfor
  endfor
  D(n) = A(n,n);
  D = diag(D);
