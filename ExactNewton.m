function [v, iter] = ExactNewton(x, tol, maxIter)
  iter = 0;
  F0 = Gradient2(x);
  while norm(F0) > tol && iter < maxIter
    H0 = Hessian(x);
    d = H0 \ -F0;
    x = x + d;
    F0 = Gradient2(x);
    iter = iter + 1;
  endwhile
  v = x;
