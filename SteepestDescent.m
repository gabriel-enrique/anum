function [x, iter] = SteepestDescent(x0, tol, maxIter)
  x = x0;
  n = length(x);
  x = zeros(n, 1);
  iter = 0;
  while norm(Gradient2(x)) > tol && iter < maxIter
    p = -Gradient2(x);
    a = LineSearchBisection(x, p, tol);
    x = x + a * p;
    iter = iter + 1;
  endwhile
