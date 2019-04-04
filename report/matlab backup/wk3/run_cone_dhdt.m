%UNTITLED1 Summary of this function goes here
%  Detailed explanation goes here
h0 = 0.4;
[t,h] = ode45('cone_dhdt',[0 90],h0);
plot(t,h);
xlabel('t = Time (s)');
ylabel('x (m)');