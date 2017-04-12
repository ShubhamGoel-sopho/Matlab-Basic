function [ root ] = Bisection( a,b,func,n,e )
syms x c fa fb fc
iter=0;
fa=subs(func, x, a)
fb=subs(func, x, b)
while iter<n || abs(b-a)<e
c=(a+b)/2;
fc=subs(func,x,c)
if (fa*fc)<0
b=c;
else if (fc*fb)<0
a=c;
end
end
iter=iter+1;
end
disp(c);
end