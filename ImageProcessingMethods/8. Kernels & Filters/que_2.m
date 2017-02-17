clc
clear all
close all
original=double(imread('SKULLBASE_Original.jpg'));
%original=double(dicomread('SKULLBASE.DCM'));
subplot(3,3,1),colormap(gray(256))
image(original),title('original Image')
%transformation using ITF
trans=256.*((original-min(original(:)))./(max(original(:))-min(original(:))));
subplot(3,3,2)
image(trans),title('transformation using ITF')
% LPF using gaussian smoothing
ksmooth1=1/256*([1,4,6,4,1;4,16,24,16,4;6,24,36,24,6;4,16,24,16,4;1,4,6,4,1 ]);
Asmooth1=conv2(ksmooth1,trans);
subplot(3,3,3)
image(Asmooth1),title('smoothing using LPF')
%Edge detection using sobel
skx=([-1,0,1;-2,0,2;-1,0,1]);
Askx=conv2(skx,Asmooth1);
subplot(3,3,4)
image(Askx),title('Edge detection Sobel: x-central')
sky=([-1,-2,-1;0,0,0;1,2,1]);
Asky=conv2(sky,Asmooth1);
subplot(3,3,5)
image(Asky),title('Edge detection Sobel: y-central')
edge1=sqrt(Askx.^2+Asky.^2);
subplot(3,3,6)
image(edge1),title('Edge detection-Sobel')
%edge detection using Central difference
kx=(1/2)*([0,0,0;-1,0,1;0,0,0]);
Akx=conv2(kx,Asmooth1);
subplot(3,3,7)
image(Akx),title('Edge det central diff: x-central')
ky=(1/2)*([0,-1,0;0,0,0;0,1,0]);
Aky=conv2(ky,Asmooth1);
subplot(3,3,8)
image(Aky),title('Edge det central diff: y-central')
edge2=sqrt(Akx.^2+Aky.^2);
subplot(3,3,9)
image(edge2),title('Edge det: central diff')
