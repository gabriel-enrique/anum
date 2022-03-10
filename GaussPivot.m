function [U, bt, p] = GaussPivot(A, b)
  n = length(b);
  C = [A b];
  p = 1:n;
  for j=1:n-1
    [x, k] = max(abs(C(j:n,j)));
    k = k+j-1;
    C([k j],:) = C([j k],:);
    p([k j]) = p([j k]);
    for i=j+1:n
      m = C(i,j)/C(j,j);
      C(i,j:n+1) = C(i,j:n+1) - m*C(j,j:n+1);
    endfor
  endfor
  U = triu(C(:,1:n));
  bt = C(:,n+1);