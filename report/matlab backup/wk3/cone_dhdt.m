function dhdt = cone_dhdt(t,h)
%UNTITLED1 Summary of this function goes here
%  Detailed explanation goes here

h0 = 0.4;
Cd = 0.9;
h0 = 0.4;
b = 50;
a0 = pi * (0.005^2);
g = 9.8;
dhdt = - a0 * Cd * sqrt(2 * g * h) / ((pi * sin(b)* h))^2;
end