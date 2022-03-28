function J = JaccobGeneral(x)
  n = length(x);
  h = 10^-5;
  for i=1:n
    Fx = FGeneral(x);
    for j=1:n
      xjh = x;
      xjh(j) = xjh(j) + h;      
      Fih = FGeneral(xjh);
      J(i,j) = (Fih(i) - Fx(i)) / h;
    endfor
  endfor
