function [v, iter] = SysNewtonGeneral(x, tol, maxIter)
  iter = 0;
  F0 = FGeneral(x);
  while norm(F0) > tol && iter < maxIter
    J0 = JaccobGeneral(x);
    d = J0 \ -F0;
    x = x + d;
    F0 = FGeneral(x);
    iter = iter + 1;
  endwhile
  v = x;
