clc
clear all
p=@(x) 20*x.^2-200*x+3;
% a.To find minimum from plot
x=[1:0.1:20];
plot(x,p(x))
%appropriate location minimum -1<x<6
z=fminbnd(p,-1,6)
% to find minimum of y
