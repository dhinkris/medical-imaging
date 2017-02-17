clc
clear all
[Ra,C]=fminbnd(@minicost,0,10)
R=[0:0.01:100];
disp('minimum value of R: ')
disp(Ra)
% to find minimum length-->Substitute minimum value of R
L=(2000-(0.5*pi*Ra^2))/(2*Ra)
cost=minicost(Ra)
plot(R,minicost(R))


