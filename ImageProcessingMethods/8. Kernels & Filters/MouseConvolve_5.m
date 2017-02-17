% script from W. Birkfellner, M. Figl, J. Hummel: "Medical Image Processing - A Basic Course", copyright 2010 by Taylor & Francis
clear;
img=zeros(733,733);
img = imread('MouseCT.jpg');
fimg = fft2(img);
fimg = fftshift(fimg);
gs=zeros(733,733);
sig=2;
for j=1:733
for k=1:733
gs(j,k)=exp(-((j-366)^2+(k-366)^2)/(2*sig^2));
end
end
gs=fftshift(fft2(gs));
fimg=gs.*fimg;
cimg=ifftshift(ifft2(ifftshift(fimg)));
minint=min(min(cimg));
cimg=cimg-minint;
maxint=max(max(cimg));
cimg=cimg/maxint*64;
colormap(gray);
image(real(cimg))


