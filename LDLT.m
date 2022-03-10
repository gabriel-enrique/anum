function [L, D, p] = LDLT(A)
  [n, n] = size(A);
  L = eye(n);
  p = 1:n;
  for j=1:n-1
    [x, k] = max(abs(diag(A(j:n,j:n))));
    k = k+j-1;
    A([k j],:) = A([j k],:);
    A(:,[k j]) = A(:,[j k]);
    L([k j],1:j-1) = L([j k],1:j-1);
    p([k j]) = p([j k]);
    D(j) = A(j,j);
    for i=j+1:n
      L(i,j) = A(j,i)/D(j);
      A(i,i:n) = A(i,i:n) - L(i,j)*A(j,i:n);
      A(i+1:n,i) = A(i,i+1:n);
    endfor
  endfor
  D(n) = A(n,n);
  D = diag(D);
