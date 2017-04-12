function [ rslt ] = simpson( y , a , b , n)
syms x
def = int(y,a,b);
h = (b-a)/n;
f = 0;
g = -subs(y,b);
N = n/2;
for i = 1:N
f = f + subs(y, a+((2*i)-1)*h);
g = g + subs(y, a+((2*i)*h));
end
fprintf(' Result Error')
rslt(1) = h*(subs(y, a) + subs(y, b) + 4*f + 2*g)/3;
rslt(2) = abs(def - rslt(1));
end