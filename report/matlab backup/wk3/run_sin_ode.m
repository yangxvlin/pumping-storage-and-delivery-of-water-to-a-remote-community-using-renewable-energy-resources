%UNTITLED1 Summary of this function goes here
%  Detailed explanation goes here
x0 = 1;
[t,x] = ode45('sin_ode',[0 10],x0);
plot(t,x);
xlabel('t = Time (s)');
ylabel('x (m)');