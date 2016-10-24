v0 = 20;
g = 9.81;
y = 0;
t = 0;
time = 0;
location = 0;


while (y>=0)
    disp(['at t = ',num2str(t),'the location is : ',num2str(y)]);
    t = t+0.1;
    y = v0*t -0.5*g*t^2;
    time = [time,t];
    location = [location,y];
    
end
plot(time,location,'-bo');
xlabel('time');
ylabel('location');