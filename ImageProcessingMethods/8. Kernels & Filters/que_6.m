clc
clear all
close all
img = imread('brickwall.jpg');
fimg=fft2(img);
fimg= fftshift(fimg);
 
a=zeros(512, 512);
b=zeros(512, 512);
fimg2=complex(a,b);
fimg2(1:512, 255:257)=fimg(1:512, 255:257);
 
ft_img = real(ifft2(ifftshift(fimg2)));
subplot(2,2,1) 
colormap(gray); 
imagesc(ft_img)
subplot(2,2,2)
imagesc(abs(fimg))
subplot(2,2,3)
imagesc(log10(abs(fimg)))
