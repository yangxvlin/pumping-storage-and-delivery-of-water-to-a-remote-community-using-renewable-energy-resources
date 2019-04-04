d = [5 10 20]
v = [5 10 15 20]
P = [406, 1625, 6500; 3250, 1300, 52000; 10970, 43875, 175500; 26000, 10405, 41600];

[D, V] = meshgrid(d, v)

surf(D, V, P)
xlabel('B(m)')
ylabel('V(m/s)')
zlabel('P(kWh/year)')