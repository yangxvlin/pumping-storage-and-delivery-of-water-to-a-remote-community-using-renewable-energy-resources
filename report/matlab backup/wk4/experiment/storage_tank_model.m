function dhdt = storage_tank_model(t,h)

rho = 1100      % density of water (kg/m^3)
g = 9.8         % gravitational constant (m/s^2)
L = 0.205       % length of square tank base (m)
W = 0.15        % width of square tank base (m)
Cd = 0.7925     % Cd orifice coefficient
d = 0.002       % diameter of orifice

A = L*W         % cross-sectional area of tank (m^2)
Q = 0.00002     % pump flow rate (m^3/s)
a0 = (d^2)*pi   % cross-sectional area of orifice

dhdt = Q/A - (a0 * Cd * sqrt(2 * g * h)) / A
end
