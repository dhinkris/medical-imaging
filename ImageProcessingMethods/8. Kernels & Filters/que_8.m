clc
clear all
close all
original=double(imread('MouseCT.jpg'));
colormap(gray(256));
subplot(3,3,1)
image(original),title('Original Image')
%transformation using ITF
trans=256.*((original-min(original(:)))./(max(original(:))-min(original(:))));
subplot(3,3,2)
image(trans),title('transformation using ITF')
%fft
a=fftshift(fft2(trans));
subplot(3,3,3)
imagesc(log10(abs(a)))
%low pass
y1=zeros(733,733);
y2=zeros(733,733);
y=complex(y1,y2);
y(300:400,320:400)=a(300:400,320:400);
subplot(3,3,4)
imagesc(log10(abs(y)))
b=ifft2(ifftshift(y));
subplot(3,3,5)
imagesc(real(b))
%high pass
a(350:400,320:400)=0;
subplot(3,3,6)
imagesc(log10(abs(a)))
c=ifft2(ifftshift(a));
subplot(3,3,7)
imagesc(real(c))
%band pass
a(350:400,320:400)=0;
a(1:900,1:150)=0;
a(1:900,600:800)=0;
a(1:150,100:600)=0;
subplot(3,3,8)
imagesc(log10(abs(a)))
d=ifft2(ifftshift(a));
subplot(3,3,9)
imagesc(real(d))



