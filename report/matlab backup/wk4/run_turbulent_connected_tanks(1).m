clear all % clears all values stored by MATLAB

% Initial conditions
h10 = 25;
h20 = 5;

% Solve the differential equation
[t,h] = ode45('turbulent_connected_tanks',[0 40*60],[h10 h20]);

% Plot the tank depths
plot(t/60,h(:,1),'k',t/60,h(:,2),'k--')
title('Two tanks connected with a turbulent flow');
xlabel('Time (min)');
ylabel('Tank height (m)');
legend('H_1','H_2')

% Calculate and plot the Reynolds number
d = 0.3;    % diameter of pipe
g = 9.8;    % gravitational constant
rho = 1100; % density
mu = 0.08;  % viscosity
L = 5;      % length of pipe
f = 0.008;  % Fanning friction factor
v = sqrt(g*d*(h(:,1)-h(:,2))/(2*L*f)); % velocity
Reynolds = rho*v*d/mu;

% Plot the Reynolds number
figure; plot(t/60,Reynolds,'k')
title('Two tanks connected with a turbulent flow');
xlabel('Time (min)');
ylabel('Reynolds Number');