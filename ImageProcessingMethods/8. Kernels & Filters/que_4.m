clc
clear all
close all
[X1,Y1]=meshgrid(1:1:180);
Z1=fftshift(fft(cos(3*X1)));
subplot(2,2,1)
img=mesh(X1,Y1,Z1);
title('cos(3x)')
%fourier transform
[X2,Y2]=meshgrid(1:1:180);
Z2=real(fftshift(fft(cos(5*Y2))));

subplot(2,2,2)
img=mesh(X2,Y2,Z2);
title('cos(5y)')
%fourier transform
[X3,Y3]=meshgrid(1:1:180);
Z3=real(fftshift(fft(cos(3*X3).*cos(5*Y3))));

subplot(2,2,3)
img=mesh(X3,Y3,Z3);
title('cos(3x)cos(5y)')




