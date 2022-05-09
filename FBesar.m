function F = FBesar(x, y)
  F = zeros(2, 1);
  % F(1) = 2*x*sin(y) - y^2*log(x);
  % F(2) = exp(2*x*y) - cos(x*y) - 1;
  % F(1) = -2*(1 - x) - 400*x*(y - x^2);
  % F(2) = 200*(y - x^2);
  F(1) = x;
  F(2) = 5*y;
