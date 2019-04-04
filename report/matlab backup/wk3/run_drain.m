
%UNTITLED1 Summary of this function goes here
%  Detailed explanation goes here
h0 = 100;
[t,h] = ode45('drain',[0 20],h0);
plot(t,h);
xlabel('Time (s)');
ylabel('Hight of water (m)');