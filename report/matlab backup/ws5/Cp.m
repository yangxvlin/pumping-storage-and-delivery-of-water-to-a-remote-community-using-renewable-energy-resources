close all
clc
clear

r = 0.175; % radius of blade
RPM = [374 430 621 660];
p =   [0.036 0.048 0.131 0.134;]'; % power of pump
Vw =  [2.5 3.0 3.5 4.0]'; % wind speed
w_raw = 2 * pi / 60 .* RPM;

figure()
hold on
plot(Vw, RPM, 'x')
title('rotation per minute vs wind speed raw')
xlabel('wind speed (m/s)')
ylabel('rotation per minute')
hold off

% get fitted linear equation
% new_RPM = [364;
%            469;
%            574;
%            679;]
% new_RPM get from fitted linear equation

Vw_new = [2.5 3.0 3.5 4.0]';
rpm_new = (Vw_new .* 209.8 - 160.6);

figure()
hold on
plot(Vw, rpm_new, 'x')
title('rotation per minute vs wind speed fitted')
xlabel('wind speed (m/s)')
ylabel('rotation per minute')
hold off

% rotation speed
w = 2 * pi / 60 .* rpm_new;

% calculate lambda
lambda = [w .* r ./ Vw_new];

% density of air
rho = 1.225;
A = pi * (r^2);

% calculate Cp
Cp_cp = 2 .* p ./ ((Vw_new .^3) .* (rho * A));

figure()
hold on
plot(lambda, Cp_cp,'x');
title('Cp vs lambda')
xlabel('lambda')
ylabel('Cp')
hold off
