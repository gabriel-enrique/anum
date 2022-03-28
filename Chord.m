function [v, iter] = Chord(x, tol, m, maxIter)
  iter = 0;
  F0 = FGeneral(x);
  while norm(F0) > tol && iter < maxIter
    J0 = JaccobGeneral(x);
    [L, U] = LU(J0);
    for i=1:m
      F0 = FGeneral(x);
      y = Bawah(L, -F0);
      d = Atas(U, y);
      x = x + d;
      iter = iter + 1;
    endfor
  endwhile
  v = x;