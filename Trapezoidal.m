function [ output_args ] = Trapezoidal( f, x0, x1, n )
syms x;
f0=subs(f, x, x0);
f1=subs(f, x, x1);
h=(x1-x0)/n;
f2=0;
a=x0;
for i=1:n-1
x2= a+i*h;
f2= f2+ subs(f, x, x2);
end
disp('The answer for integration is: ');
area= h*(f0+f1)/2+ h*f2
end