function Rf = Romberg(a, b, tol)
  R00 = RepeatedTrap(a, b, 1);
  R10 = RepeatedTrap(a, b, 2);
  R11 = R10 + (1/3)*(R10 - R00);
  if abs(R11-R00) > tol
    R20 = RepeatedTrap(a, b, 4);
    R21 = R20 + (1/3)*(R20 - R10);
    R22 = R21 + (1/15)*(R21 - R11);
  endif
  Rf = [R00 0 0 ; R10 R11 0 ; R20 R21 R22];