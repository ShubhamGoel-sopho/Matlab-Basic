%%solve the D^2+4y = sec x 

syms x t;

yc = dsolve('D2y=-4*y');
y1 = diff(cos(2*t));
y2 = diff(sin(2*t)) ;

w = [cos(2*t) sin(2*t) ; y1 y2];
detw = det(w);

w1 = [0 sin(2*t) ; sec(t) y2];
detw1 = det(w1);

w2 = [cos(2*t) 0 ; y1 sec(t)];
detw2 = det(w2);

ux = int(detw1/detw);
vx = int(detw2/detw);

yp = ux*cos(2*t)+vx*sin(2*t);

y = yc+yp;