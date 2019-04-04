function dydt = coupled_ODEs(t,y)
%UNTITLED1 Summary of this function goes here
%  Detailed explanation goes here
dydt = [y(2);-sin(y(1))];