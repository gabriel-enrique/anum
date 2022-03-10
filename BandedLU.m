function [L, U, v] = BandedLU(A, p, q)
  [n,n] = size(A);
  L = eye(n);
  v = 1:n;
  for j=1:n-1    
    k = min(j+p,n);
    [x,m] = max(abs(A(j:k,j)));    
    m = m+j-1;    
    A([m j],:) = A([j m],:);    
    L([m j],1:j-1) = L([j m],1:j-1);    
    v([m j]) = v([j m]);
    for i=j+1:k        
      s = min(i+p+q,n);        
      L(i,j) = A(i,j)/A(j,j);        
      A(i,j:s) = A(i,j:s)-L(i,j)*A(j,j:s);    
    end
  end
  U = triu(A);