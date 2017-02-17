clc
clear all
x=0:0.1:10;
a=20; b=-200; c=12;
pol1= parabol(a,b,c);
%y=polfind(x)
fminbnd(pol1,1,10)