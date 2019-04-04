function dhdt = turbulent_connected_tanks(t,h)
g = 9.8;
L = 3;
f = 0.008;
d = 0.025;
mu = 0.08;
rho = 1100;


A1 = pi * (0.6)^2;
A2 = pi * (0.4)^2;
a0 = pi * (d/2)^2;
v = sqrt(d*g/(2*f*L) * (h(1)-h(2)));



dhdt = [-a0 * v / A1  ; a0 * v / A2 ];
end