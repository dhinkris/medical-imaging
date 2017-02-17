% script from W. Birkfellner, M. Figl, J. Hummel: "Medical Image Processing - A Basic Course", copyright 2010 by Taylor & Francis
clear;
img=zeros(733,733);
img = imread('MouseCT.jpg');
fimg = fft2(img);
fimg= fftshift(fimg);
for i=1:733
for j=1:733
crad=sqrt((i-366)^2+(j-366)^2);
if crad > 10
fimg(i,j)=complex(0,0);
end
end
end
lpimg=zeros(733,733);
lpimg = real(ifft2(ifftshift(fimg)));
minint=min(min(lpimg));
lpimg=lpimg-minint;
maxint=max(max(lpimg));
lpimg=lpimg/maxint*64;
colormap(gray);
image(lpimg)


