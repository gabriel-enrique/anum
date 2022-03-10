function [R, bt] = Rotasi(A, b)
  [m, n] = size(A);
  A = [A b];
  for j=1:n
    for i=j+1:m
       x = A(j,j);
       y = A(i,j);
       r = sqrt(x^2 + y^2);
       c = x/r;
       s = y/r;
       temp = c*A(j,j:n+1) + s*A(i,j:n+1);
       A(i,j:n+1) = -s*A(j,j:n+1) + c*A(i,j:n+1);
       A(j,j:n+1) = temp;
    endfor
  endfor
  R = A(:,1:n);
  bt = A(:,n+1);