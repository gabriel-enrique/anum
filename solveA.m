function x = solveA(A, b, n, q)
  k = q + 1;
  x = zeros(n, 1);
  x(1) = b(1)/A(1,1);
  for i=2:k
    x(i) = (b(i) - A(i,1:i-1) * x(1:i-1))/A(i,i);
  endfor
  for i=k+1:n
    x(i) = (b(i) - A(i,i-q:i-1) * x(i-q:i-1))/A(i,i);
  endfor
  