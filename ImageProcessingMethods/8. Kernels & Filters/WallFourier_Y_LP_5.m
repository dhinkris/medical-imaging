% script from W. Birkfellner, M. Figl, J. Hummel: "Medical Image Processing - A Basic Course", copyright 2010 by Taylor & Francis
clear;
img=zeros(512,512);
img = imread('brickwall.jpg');
fimg = fft2(img);
fimg= fftshift(fimg);
for i=1:512
for j=1:254
    fimg(i,j)=complex(0,0);
end
end
for i=1:512
for j=258:512
    fimg(i,j)=complex(0,0);
end
end
lpimg=zeros(512,512);
lpimg = real(ifft2(ifftshift(fimg)));
minint=min(min(lpimg));
lpimg=lpimg-minint;
maxint=max(max(lpimg));
lpimg=lpimg/maxint*64;
colormap(gray);
image(lpimg)


