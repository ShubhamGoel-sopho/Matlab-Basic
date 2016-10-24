%% plot fx and gx and find the area bounded by the curves

syms x;

f = 3*x-2*x^2;
h = ezplot(f);

set(h,'color','b')
hold on
g = x^2;
k = ezplot(g);
set(h,'color','g');
hold off
grid
xlabel('x');
ylabel('y');
legend('f(x)','g(x)');
syms r; 
r=int(f,0,1)-int(g,0,1)
