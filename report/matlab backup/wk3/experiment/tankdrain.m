depth = [0.08:-0.005:0];% dpeth of water
trial1 = [0 30 40 62 79 100 116 136 157 175 195 214 235 255 274 298 317];
trial2 = [0 23 42 64 87 109 171 153 175 199 221 243 268 291 316 341 366];
trial3 = [0 23 43 66 86 109 130 154 176 200 222 246 270 292 316 339 366];
%step 1 
figure()
plot(trial1,sqrt(depth),'xg', trial2,sqrt(depth),'xr', trial3,sqrt(depth),'xb');
xlabel('time (s)');
ylabel('square root of height (m)');
title('draining experiment');
legend('trial1 height', 'trial2 height', 'trial3 height')
%step 2 
%Tools-basic fitting ,'linear'&'show equation'
g = 9.8;
A = 0.205 * 0.15;
a0 = (0.002 ^ 2) * pi;
gradient = (-0.00077 - 0.00066 - 0.00073) / 3;% average of 3 gradients
Cd = - gradient * (A / a0 * sqrt(2 / g));
%remenber to put data above to calculate three gradiants and three Cd and
%take average value of Cd
%Cd = 0.79592