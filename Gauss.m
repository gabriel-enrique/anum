function [U, bt] = Gauss(A, b)
  n = length(b);
  C = [A b];
  for j=1:n-1
    for i=j+1:n
      m = C(i,j)/C(j,j);
      C(i,j:n+1) = C(i,j:n+1) - m*C(j,j:n+1);
    endfor
  endfor
  U = triu(C(1:n,1:n));
  bt = C(:,n+1);
