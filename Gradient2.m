function g = Gradient2(x)
  h = 10^-5;
  n = length(x);
  g = zeros(n, 1);
  for i=1:n
    xihp = x;
    xihm = x;
    xihp(i) = xihp(i) + h;
    xihm(i) = xihm(i) - h;
    g(i) = (f(xihp) - f(xihm)) / (2*h);
  endfor