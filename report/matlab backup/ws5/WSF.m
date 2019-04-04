
%UNTITLED1 Summary of this function goes here
%  Detailed explanation goes here
V = 0:120
T = 0:30
[Tgrid, Vgrid] = meshgrid(T,V)
y = 13.12 + 0.6215 .* Tgrid - 11.37 .* Vgrid .^ (0.16) + 0.3965 * Tgrid .* Vgrid .^ (0.16);

%surf(Vgrid,Tgrid, y) 
surf(T,V, y)%no, V,T
xlabel('temperature(C)')
ylabel('velocity(km/h)')
zlabel('WCF')