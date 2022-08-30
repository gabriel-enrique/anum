function [Tf, est] = Adaptive(a, b)
  Tfh = (b-a) * (f(a) + f(b)) / 2;
  Tfh2 = (b-a) * (f(a) + 2*f((a+b)/2) + f(b)) / 2;
  est = 4 * (Tfh - Tfh2) / 3;
  Tf = Tfh2;