function [ xn ] = newtonr( f, x0, k)
syms g
i=0;
xp=x0;
g=diff(f);
while i<k
xn=xp-(subs(f,xp)/subs(g,xp));
xp=xn;
i=i+1;
end
disp(xn);
end