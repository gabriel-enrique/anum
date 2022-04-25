function H = Hessian2(x)
  h = 10^-5;
  n = length(x);
  for i=1:n
    xip = x;
    xip(i) = xip(i) + h;
    xim = x;
    xim(i) = xim(i) - h;
    for j=i:n
      xipjp = xip;
      xipjm = xip;
      xipjp(j) = xipjp(j) + h;
      xipjm(j) = xipjm(j) - h;
      
      ximjp = xim;
      ximjm = xim;
      ximjp(j) = ximjp(j) + h;
      ximjm(j) = ximjm(j) - h;
      
      H(i,j) = (1/(4*h^2)) * (f(xipjp) - f(xipjm) - f(ximjp) + f(ximjm));
      H(j,i) = H(i,j);
    endfor
  endfor