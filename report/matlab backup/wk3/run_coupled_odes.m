%UNTITLED1 Summary of this function goes here
%  Detailed explanation goes here
y0(1) = 5;
y0(2) = 2;
[t,y] = ode45('coupled_odes',[0 10],y0);
plot(t,y);
xlabel('t = Time (s)');
ylabel('y (m)');