function [R, bt] = Householder(A, b)
  [m, n] = size(A);
  A = [A b];
  for j=1:n
    v = A(j:m,j) + sign(A(j,j))*norm(A(j:m,j))*[1 ; zeros(m-j,1)];
    c = 2/(v'*v);
    for i=j:n+1
      A(j:m,i) = A(j:m,i) - c*v'*A(j:m,i)*v;
    endfor
  endfor
  R = A(:,1:n);
  bt = A(:,n+1);
  