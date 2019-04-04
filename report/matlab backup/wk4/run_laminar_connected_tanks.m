clear all % clears all values stored by MATLAB

% Initial conditions
h10 = 1.5;
h20 = 0.5;

% Solve the differential equation
[t,h] = ode45('laminar_connected_tanks',[0 60*60],[h10 h20]);

% Plot the tank depths
plot(t/60,h(:,1),'k',t/60,h(:,2),'k--')
title('Two tanks connected with a laminar flow');
xlabel('Time (min)');
ylabel('Tank height (m)');
legend('H_1','H_2')

% Calculate the Reynolds number
d = 25e-3;  % diameter of pipe
g = 9.8;    % gravitational constant
rho = 1100; % density
mu = 0.08;  % viscosity
L = 3;      % length of pipe
v = rho*g*(h(:,1)-h(:,2))*d^2/(32*mu*L); % velocity
Reynolds = rho*v*d/mu;

% Plot the Reynolds number
figure; plot(t/60,Reynolds,'k')
title('Two tanks connected with a laminar flow');
xlabel('Time (min)');
ylabel('Reynolds number');