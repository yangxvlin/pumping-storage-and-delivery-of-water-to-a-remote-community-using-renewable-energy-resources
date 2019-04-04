depth = [0:0.5:6]
NineVTrial = [0 21.92 33.23 50.49 62.58 78.55 91.37 109.81 124.44 140.00 155.30 170.60 185.59]
SixVTrial = [0 28.55 51.95 78.09 104.11 127.75 152.97 184.18 210.64 238.04 267.33 290.70 319.75]

figure()
plot (SixVTrial, depth, 'b', NineVTrial, depth,'g');
legend('6VTrial height', '9VTrial height');
hold on;
xlabel('time (s)');
ylabel('height (m)');
title('9V Pumping Trial1 & 6V Pumping Trial');
% FINDING Q, THE PUMP FLOW RATE FOR THE 9V PUMP:
% Q = A*(dH/dt)
% Q is flow rate in (m^3/s), A is cross-sectional area, dH/dt is gradient
% Tank Dimensions: 205mm * 150mm * 120mm (L * W * H)
% 9V Pump: dH/dt = 0.00019 and 0.00033. Average coefficient is 0.00026
% Therefore Q = 0.205*0.15*0.00026 = 0.000007995 = approx. 0.000008