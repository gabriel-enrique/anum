function a = LineSearchBisection(x0,p,tol) 
  a1=0; a2=1;
  while (a2-a1)>tol
    x1=x0+a1*p; x2=x0+a2*p;
    f1=f(x1); f2=f(x2);
    if f1<f2
      a2=(a1+a2)/2;
    else
      a1=(a1+a2)/2;
    end
  end
  a=(a1+a2)/2;
