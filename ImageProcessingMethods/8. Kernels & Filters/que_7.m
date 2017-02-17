clc
clear all
close all
rect=zeros(15,1);
rect(1:4)=0;
rect(5:8)=1;
rect(9:12)=0;
subplot(3,3,1)
plot(rect),xlim([0 15]),ylim([0 2])
title('rect function')
t=4:10;
y=(-1).^t;
y(1:4)=0;
y(6:7)=0;
subplot(3,3,2)
plot(y)
title('triangular func')
fina=conv(rect,y);
subplot(3,3,3)
plot(fina)
title('conv of rect and triangle')
fina1=fftshift(fft(fina));
subplot(3,3,4)
plot((abs(fina1)))
title('fft')
fina2=ifft(ifftshift(fina1));
subplot(3,3,5)
plot(real(fina2))
title('ifft')
f1=fft(rect);
f1s=fftshift(f1);
f2=fft(y);
f2s=fftshift(f2);
res1=f1s*f2s;
res2=ifft(ifftshift(res1));
subplot(3,3,6)
plot(abs(res1))
title('fft of rect and triangle')
subplot(3,3,7)
plot(abs(res2))
title('ifft of rect and triangle')
