clc
clear all
close all
x1=[0:0.1:10]
y1=zeros(101,1);  
y1(20:40)=0.4;
subplot(3,3,1)
plot(x1,y1,'r'),ylim([0 1]),title('rect function')
b=fft(y1);
b1=fftshift(b);
subplot(3,3,2)
plot(abs(b)),title('fft of rect')
subplot(3,3,3)
plot(abs(b1)),title('fftshift of rect')
b1(1:40)=0;
b1(60:120)=0;
subplot(3,3,4)
plot(abs(b1)),title('sinc function')
sincfun=ifft(ifftshift(b1));
subplot(3,3,5)
plot(real(sincfun)),title('real of sinc')

y2=zeros(100,1);
y2(10:60)=sincfun(10:60);
sincfun2=ifft(ifftshift(y2));
subplot(3,3,6) 
plot(abs(y2))
xlabel('spatial frequency')
subplot(3,3,7) 
plot(real(sincfun2))
xlabel('reconstructed figure')
