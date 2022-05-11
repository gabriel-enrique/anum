function k = FindK(x, y)
  n = length(x);
  k = zeros(n, 1);
  r = zeros(n-2, 1);
  A = zeros(n-2, n-2);
  for i=2:n-2
    A(i-1, i-1) = 2*(x(i-1) - x(i+1));
    A(i-1, i) = x(i) - x(i+1);
    A(i, i-1) = A(i-1, i);
    r(i-1) = 6*((y(i-1) - y(i))/(x(i-1) - x(i)) - (y(i) - y(i+1))/(x(i) - x(i+1)));
  endfor
  A(n-2, n-2) = 2*(x(n-2) - x(n));
  r(n-2) = 6*((y(n-2) - y(n-1))/(x(n-2) - x(n-1)) - (y(n-1) - y(n))/(x(n-1) - x(n)));
  k(2:n-1) = A\r;