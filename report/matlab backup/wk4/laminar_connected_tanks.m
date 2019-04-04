function dhdt = laminar_connected_tanks(t,h)
% calculates the rate of change of heights in tank
% h = [H1 H2] = current hieghts in tanks 1 and 2
% t = time
% dhdt = rate of change of h

d = 25e-3;  % diameter of pipe
D1 = 1.2;   % diameter of tank 1
D2 = 0.8;   % diameter of tank 2
g = 9.8;    % gravitational constant
rho = 1100; % density
mu = 0.08;  % viscosity
L = 3;      % length of pipe

a = pi*(d/2)^2;   % area of pipe
A1 = pi*(D1/2)^2; % area of tank1
A2 = pi*(D2/2)^2; % area of tank2

% calculate velocity assuming laminar flow
v = rho*g*(h(1)-h(2))*d^2/(32*mu*L);

% calculate rate of change of h
dhdt = [
    -a*v/A1
	a*v/A2
];