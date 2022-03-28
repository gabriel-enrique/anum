function [Q, R] = QHouseholder(A)
  [m, n] = size(A);
  Q = eye(m);
  for j=1:n
    v = A(j:m,j) + sign(A(j,j))*norm(A(j:m,j))*[1 ; zeros(m-j,1)];
    c = 2/(v'*v); 
    Q1 = eye(m-j+1) - c*v*v';
    Q = [eye(j-1) zeros(j-1,m-j+1) ; zeros(m-j+1,j-1) Q1] * Q;
    for i=j:n
      A(j:m,i) = A(j:m,i) - c*v'*A(j:m,i)*v;
    endfor
  endfor
  R = A;
  