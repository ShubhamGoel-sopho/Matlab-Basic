function y = lagrange( X , F )
syms x;
n = length(X);
f(x)=0.*x +1;
y=0.*x;
for i=1:n
f(x)=0.*x +1;
for k=1:n
if (k ~= i )
f(x)=((x-X(1,k))/(X(1,i)-X(1,k))).*f(x);
end
end
f(x) = f(x).*F(1,i);
y = y + f(x) ;
end
end
