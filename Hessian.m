function H = Hessian(x)
  h = 10^-5;
  n = length(x);
  for i=1:n
    xih = x;
    xih(i) = xih(i) + h;
    for j=i:n
      xjh = x;
      xjh(j) = xjh(j) + h;
      xijh = xih;
      xijh(j) = xijh(j) + h;
      H(i,j) = (1/h^2) * (f(xijh) - f(xjh) - f(xih) + f(x));
      H(j,i) = H(i,j);
    endfor
  endfor