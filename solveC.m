function X = solveC(A, B, n, q)
  k = q + 1;
  X = zeros(n, n);
  for j=1:n
      X(1,j) = B(1,j)/A(1,1);
    for i=2:k
      X(i,j) = (B(i,j) - A(i,1:i-1) * X(1:i-1,j))/A(i,i);
    endfor
    for i=k+1:n
      X(i,j) = (B(i,j) - A(i,i-q:i-1) * X(i-q:i-1,j))/A(i,i);
    endfor
  endfor
  
  