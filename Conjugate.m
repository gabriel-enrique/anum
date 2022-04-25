function [x, iter] = Conjugate(x, tol, maxIter)
  n = length(x);
  x0 = zeros(n, 1);
  p0 = x0;
  iter = 0;
  g0 = Gradient2(x0);
  p0 = -g0;
  b0 = 0;
  a = LineSearchBisection(x, p0, tol);
  x1 = x0 + a*p0;
  g1 = Gradient2(x1);
  
  while norm(g1) > tol && iter < maxIter
    y = g1 - g0;
    b1 = (g1' * y) / (p0' * y);
    p1 = -g1 + b1 *p0;
    a = LineSearchBisection(x1, p1, tol);
    x1 = x1 + a*p1;
    iter = iter + 1;
  endwhile
  
  x = x1;