function p=PolyNewton(x,y,t)
  n = length(x); %polynom p memiliki order n-1
  L = zeros(n,n); 
  for j=1:n
    for i=j:n
      L(i,j) = BasisNewton(x, j, x(i));
    end
  end
  c = Bawah(L, y);
  p = y(1);
  for i=2:n
  p = p + c(i)*BasisNewton(x, i, t);
  end
