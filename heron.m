x = 0.5;
err = 1;
atol= 1.0e-5;
while err>atol
    xnew = 1/2*(x+2/x);
    err = abs(x-xnew)
    x = xnew
end