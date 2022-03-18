function [x, counter] = Bisection(a, b, tol, counterMax)
  counter = 0;
  while (b - a > tol) && (counter < counterMax)
    m = (a + b)/2;
    if f(m)*f(a) < 0
      b = m;
    else 
      a = m;
    endif
    counter = counter + 1;
  endwhile
  x = m;