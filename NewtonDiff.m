function [x, iter] = NewtonDiff(x0, tol, maxIter)
  h = 10^-5;
  iter = 0;
  while (abs(f(x0)) > tol) && (iter < maxIter)
    x0 = x0 - f(x0) * h / (f(x0+h) - f(x0));
    iter = iter + 1;
  endwhile
  x = x0;
