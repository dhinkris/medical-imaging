clc
clear all
close all
a=zeros(100,1);
a(45:55)=1;
% subplot(4,2,1)
% plot(a),title('rect function')
b=fft(a);
b=fftshift(b);
subplot(4,2,1)
plot(abs(b)),xlabel('freq'),title('sinc')

c=ifft(ifftshift(b));
subplot(4,2,2)
plot(real(c)),title('reconstructed rect')

b(1:40)=0;
b(61:100)=0;
subplot(4,2,3)
plot(abs(b)),title('centre')

c1=ifft(ifftshift(b));
subplot(4,2,4)
plot(real(c1)),title('reconstructed rect')

b1=fft(a);
b1=fftshift(b1);
a1=zeros(100,1);
a1(10:90)=b1(10:90);
subplot(4,2,5)
plot(abs(a1)),xlabel('freq'),title('sinc1')

c2=ifft(ifftshift(a1));
subplot(4,2,6)
plot(real(c2)),title('reconstructed')

b1=fft(a);
b1=fftshift(b1);
a1=zeros(100,1);
a1(20:80)=b1(20:80);
subplot(4,2,7)
plot(abs(a1)),xlabel('freq'),title('sinc1')

c2=ifft(ifftshift(a1));
subplot(4,2,8)
plot(real(c2)),title('reconstructed')

