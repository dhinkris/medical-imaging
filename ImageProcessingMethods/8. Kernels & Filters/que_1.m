clc
clear all
close all
original=double(imread('lowDoseCT.tif'));
colormap(gray(256));
subplot(3,3,1)
image(original),title('Original Image')
%transformation using ITF
trans=256.*((original-min(original(:)))./(max(original(:))-min(original(:))));
subplot(3,3,2)
image(trans),title('transformation using ITF')
%sigmoid transformation
omega=67;
sigma=30;
sigmoid=256./(1+exp(-(trans-omega)./sigma));
subplot(3,3,3)
image(sigmoid),title('sigmoid transformation')
% LPF using gaussian smoothing
ksmooth1=1/256*([1,4,6,4,1;4,16,24,16,4;6,24,36,24,6;4,16,24,16,4;1,4,6,4,1 ]);
Asmooth1=conv2(ksmooth1,sigmoid);
subplot(3,3,4)
image(Asmooth1),title('smoothing using LPF')
%HPF using sharping filter
ksharp1=([-1,-1,-1;-1,9,-1;-1,-1,-1]);
Asharp1=conv2(ksharp1,Asmooth1);
subplot(3,3,5)
image(Asharp1),title('sharpening using HPF')
%Edge detection
kx=([-1,0,1;-2,0,2;-1,0,1]);
Akx=conv2(kx,Asmooth1);
subplot(3,3,6)
image(Akx),title('Edge detection: x-central')
ky=([-1,-2,-1;0,0,0;1,2,1]);
Aky=conv2(ky,Asmooth1);
subplot(3,3,7)
image(Aky),title('Edge detection: y-central')
edge=sqrt(Akx.^2+Aky.^2);
subplot(3,3,8)
image(edge),title('Edge detection')