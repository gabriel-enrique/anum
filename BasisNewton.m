function N = BasisNewton(x, i, t)
  if i == 1
    N = 1;
  else
    N = BasisNewton(x, i-1, t) * (t - x(i-1));
  endif
