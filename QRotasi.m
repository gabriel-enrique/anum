function [Q, R] = QRotasi(A)
  [m, n] = size(A);
  Q = eye(m);
  for j=1:n
    for i=j+1:m
       x = A(j,j);
       y = A(i,j);
       r = sqrt(x^2 + y^2);
       
       c = x/r;
       s = y/r;
       
       G = eye(m);
       G(j, j) = c;
       G(i, i) = c;
       G(j, i) = s;
       G(i, j) = -s;
       
       Q = G * Q;
       
       temp = c*A(j,j:n) + s*A(i,j:n);
       A(i,j:n) = -s*A(j,j:n) + c*A(i,j:n);
       A(j,j:n) = temp;
    endfor
  endfor
  R = A;