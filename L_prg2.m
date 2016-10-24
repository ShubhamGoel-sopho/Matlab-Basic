%%practising the class question plotting the graph 3d dimensions using
%%the meshgrid

%%question is plot a surface defined by the function f(x,y) =
%%-xye^-2(x^2+y^2) on the domain -2<=x<=2 and -2<=y<=2 find the values of
%%the maxima and minima of the function 

[X,Y] = meshgrid(-2:.2:2,-2:.2:2);

Z = -1*X.*Y.*exp((-2.*X.^2)+(-2.*Y.^2));
surf(X,Y,Z);
maxima = max(max(Z));
minima = min(min(Z));

disp('the maxima is :');
disp(maxima);
disp('the minima is :');
disp(minima);


