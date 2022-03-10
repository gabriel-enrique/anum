function [R, bt, p] = QRPivot(A, b)
  [m, n] = size(A);
  % r = rank(A);
  A = [A b];
  p = 1:n;
  for j=1:n
    count = 1;
    column = 0;
    for i=j:n
      column(count) = norm(A(:,i));
      count = count + 1;
    endfor
    [x k] = max(column);
    k = k + j - 1;
    A(:,[k j]) = A(:,[j k]);
    p([k j]) = p([j k]);
    
    v = A(j:m,j) + sign(A(j,j))*norm(A(j:m,j))*[1 ; zeros(m-j,1)];
    
    g = v'*v;
    if g < 10^-16
      break
    endif
    
    c = 2/g;
    for i=j:n+1
      A(j:m,i) = A(j:m,i) - c*v'*A(j:m,i)*v;
    endfor
  endfor
  R = A(:,1:n);
  bt = A(:,n+1);
  