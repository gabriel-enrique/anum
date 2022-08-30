function Tf = RepeatedTrap(a, b, n)
  h = (b-a) / n;
  Tf = (f(a) + f(b)) * h / 2;
  for i=2:n
    Tf = Tf + h * f(a + (i-1)*h);
  endfor