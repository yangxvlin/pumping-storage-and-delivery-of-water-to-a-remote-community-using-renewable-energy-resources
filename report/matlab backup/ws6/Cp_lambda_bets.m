load CP.mat
% calculate Y
[N, Vw] = hist(WindDataRAW, 1:2:19);
Y = sum(N, 2)

% calculate lambda for each Vw
lambdas = 2 * pi / 60 * 15 * 52 ./ Vw;
% Cp estimated
CPL = [0 0 0.1186 0.1859 0.2495 0.2942 0.3154 0 0 0]';

% calculate power for each wind speed
rho = 1.225
P = CPL .* Vw.^3 * rho * (pi * 52^2) / 2;



% calculate power whole year
E = P .* Y;
sum(E)