function F = FGeneral(x)
  n = length(x);
  F = zeros(n, 1);
  % F(1) = 2*x(1)*sin(x(2)) - x(2)^2*log(x(1));
  % F(2) = exp(2*x(1)*x(2)) - cos(x(1)*x(2)) - 1;
  F(1) = (x(1)-1)^2 * (x(2)+2)^3;
  F(2) = (x(1)+1)^5 * (x(2)+2)^4;