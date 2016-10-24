%%Graphically compare the function sin x and its Taylors series expansion
%%(up to degree 10)in the neighbourhood of x.

syms f x;
f = taylor(sin(x),x,1,'order',11);

h = ezplot(f,x);
grid;
set(h,'color','g');
hold on;
y = sin(x);
k = ezplot(y,x);
set(k,'color','b');
hold off
xlabel('x') ;
ylabel('y') ;
legend('taylor series','sin x');
 
