function G = Cholesky(A)
  [n, n] = size(A);
  G(1,1) = sqrt(A(1,1));
  for i=2:n
    G(i,1) = A(i,1)/G(1,1);
  endfor
  
  for j=2:n
    G(j,j) = sqrt(A(j,j)-G(j,1:j-1)*G(j,1:j-1)');
    for i=j+1:n
      G(i,j) = (A(i,j)-G(i,1:j-1)*G(j,1:j-1)')/G(j,j);
    endfor
  endfor
