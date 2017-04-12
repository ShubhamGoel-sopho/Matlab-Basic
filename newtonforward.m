function A = newtonforward(X,F)
n=length(X);
syms x
h=X(2)-X(1);
u=(x-X(1))/h;
for i=1:n
A(i,1)=F(i);
end
for j=2:n
for i=j:n
A(i,j)=A(i,j-1)-A(i-1,j-1);
end
end
y=0*x+F(1);
%t= 0*x+1;
for j = 2:n-1
t = A(j,j);
for i = 1:j-1
t = (t*(x - X(i)))/(i*h);
end
y = y + t;
end
end