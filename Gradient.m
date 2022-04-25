function g = Gradient(x)
  h = 10^-5;
  n = length(x);
  g = zeros(n, 1);
  for i=1:n
    xih = x;
    xih(i) = xih(i) + h;
    g(i) = (f(xih) - f(x)) / h;
  endfor