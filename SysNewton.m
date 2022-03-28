function [v, iter] = SysNewton(x, y, tol, maxIter)
  iter = 0;
  F0 = FBesar(x, y);
  while norm(F0) > tol && iter < maxIter
    J0 = Jaccob(x, y);
    d = J0 \ -F0;
    x = x + d(1);
    y = y + d(2);
    F0 = FBesar(x, y);
    iter = iter + 1;
  endwhile
  v = [x ; y];
