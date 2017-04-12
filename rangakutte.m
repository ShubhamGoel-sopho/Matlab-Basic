function rslt = rangakutte( f,xo,yo,h,xval )
syms x y;
n = int8((xval-xo)/h);
xn = xo;
yn = yo;
for i = 1:n
k1 = h*subs(f,{x,y},{xn,yn});
k2 = h*subs(f,{x,y},{xo+h/2,yo+k1/2});
k3 = h*subs(f,{x,y},{xo+h/2,yo+k2/2});
k4 = h*subs(f,{x,y},{xo+h,yo+k3});
yn = yn + (k1 + 2*k2 + 2*k3 + k4)/6;
xn = xn + h;
end
rslt = yn;
end