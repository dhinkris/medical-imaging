% script from W. Birkfellner, M. Figl, J. Hummel: "Medical Image Processing - A Basic Course", copyright 2010 by Taylor & Francis
clear;
img=zeros(733,733);
img = imread('MouseCT.jpg');
fimg = fft2(img);
fimg = fftshift(fimg);
psimg=zeros(733,733);
for j=1:733
for k=1:733
psimg(j,k) = abs(fimg(j,k));
end
end
psimg = log(psimg);
minint=min(min(psimg));
psimg=psimg-minint;
maxint=max(max(psimg));
psimg=psimg/maxint*64;
colormap(gray);
image(psimg)


