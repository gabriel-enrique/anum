function J = Jaccob(x, y)
  J(1,1) = 2*sin(y) - y^2/x;
  J(1,2) = 2*x*cos(y) - 2*y*log(x);
  J(2,1) = 2*y*exp(2*x*y) + y*sin(x*y);
  J(2,2) = 2*x*exp(2*x*y) + x*sin(x*y);