function S = FindS(x, y, k, t)
  n = length(x);
  for j=1:n-1
    if x(j) <= t && t < x(j+1)
      i = j;
    endif
  endfor
  A = (y(i+1) - y(i))/(x(i+1) - x(i)) - (1/6)*(k(i+1) - k(i))*(x(i+1) - x(i))^2;
  B = y(i) - (k(i)/6)*(x(i) - x(i+1))^2 - A*x(i);
  S = k(i)*(t - x(i+1))^3/(6*(x(i) - x(i+1))) + k(i+1)*(t - x(i))^3/(6*(x(i+1) - x(i))) + A*t + B;