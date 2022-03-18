function [x, counter] = Newton(x0, tol, counterMax)
  counter = 0;
  while (abs(f(x0)) > tol) && (counter < counterMax)
    x0 = x0 - (f(x0) / df(x0));
    counter = counter + 1;
  endwhile
  x = x0;
