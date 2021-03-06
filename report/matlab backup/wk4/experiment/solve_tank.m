h0 = 0;
[t,h] = ode45('tank',[0 200],h0);
plot(t,h);
hold on
xlabel('t = Time (s)');
ylabel('h = height (m)');
depth = [0:0.005:0.06]
NineVTrial1 = [0 10.28 26.74 41.67 57.13 73.08 87.98 104.55 120.18 135.93 151.63 166.50 184.82]
NineVTrial2 = [0 21.92 33.23 50.49 62.58 78.55 91.37 109.81 124.44 140.00 155.30 170.60 185.59]
SixVTrial1 = [0 28.55 51.95 78.09 104.11 127.75 152.97 184.18 210.64 238.04 267.33 290.70 319.75]
NineVDrainTrial1 = [0 14.69 53.99 96.91 150.47 199.88 253.68 328.18 397.58]
NineVDrainTrial2 = [0 38.66 79.39 117.99 156.25 192.43 238.57 285.7 336.73 386.26 429.69 482.68 542.45]
% SixVDrain started draining at 3 cm, and the water level stabilised at 1 cm
SixVDrainTrial1 = [0 135.80 250.90 411.20 620.60]

plot(NineVTrial1, depth, 'r'); %change trial number
xlabel('time (s)');
ylabel('height (m)');
title('9V Pumping Trial1/2 & 6V Pumping Trial1 & theoritical model');
% hold on;
% plot (SixVTrial1, depth, 'k');
% hold on
%plot (NineVTrial2, depth,'g');
% FINDING Q, THE PUMP FLOW RATE FOR THE 9V PUMP:
% Q = A*(dH/dt)
% Q is flow rate in (m^3/s), A is cross-sectional area, dH/dt is gradient
% Tank Dimensions: 205mm * 150mm * 120mm (L * W * H)
% 9V Pump: dH/dt = 0.00032 and 0.00033. Average coefficient is 0.000325
% Therefore Q = 0.205*0.15*0.000325 = 0.00000999375 = approx. 0.00001
% That's around 10 mL per second. Not too bad!
