clc
clear all
f=@(x) x.^2;
g=@(y) 3.*cos(y);
h=@(z) 6.*exp(z);
k=@(x) h(g(f(x)));
x=[0:0.1:4];
plot(x,k(x))