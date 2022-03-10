function [L, U, p] = LUPivot(A)
  [n, n] = size(A);
  L = eye(n);
  p = 1:n;
  for j=1:n-1
    [x, k] = max(abs(A(j:n,j)));
    k = k+j-1;
    A([k j],:) = A([j k],:);
    L([k j],1:j-1) = L([j k],1:j-1);
    p([k j]) = p([j k]);
    for i=j+1:n
      L(i,j) = A(i,j)/A(j,j);
      A(i,j:n) = A(i,j:n) - L(i,j)*A(j,j:n);
    endfor
  endfor
  U = triu(A);