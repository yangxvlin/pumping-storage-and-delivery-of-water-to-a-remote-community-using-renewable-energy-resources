function dhdt = tank(t,h)

A = 0.205*0.15;
cd = 0.79;
a0 = pi * (0.002)^2;
g = 9.8;
v = 0.000325;
Q = 0.00000984;

dhdt =  (Q - (a0 * cd * sqrt(2 * g * h))) / (0.205*0.15);
%
end