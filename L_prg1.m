%% Here we going to draw a tangent to a curve and we will find the ROC
%% using the Newton method 

%%To draw the tangent line at point on a given curve y = 1+x^2
%%at the point (2,5) and also find the Radius of curvature at that point.

syms x; %symbolic variable
y = 1+x^2;
y1 = diff(y,x);
y2 = diff(y1,x);
sub1 = subs(y1,x,2);
sub2 = subs(y2,x,2);
roc = 1+(sub1)^2;
roc1 = (sqrt(roc))^3;
roc2 = roc1/sub2;
h = ezplot(y,[-20,20]);
set(h,'color','g');
hold on;
y3 = sub1*(x-2)+5;
k = ezplot(y3,[-20,20]);
set(k,'color','b');
hold off
title('To draw a tangent to the curve y=x^2+1') 
xlabel('x') 
ylabel('y') 
legend('x^2+1','4x-3');
disp('the radius of curvature is');
roc2
