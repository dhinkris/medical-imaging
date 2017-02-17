clc
clear all
close all
%to plot original image
original=double(dicomread('LungCT.dcm'));
colormap(gray)
subplot(4,2,1)
image(original)
title('original image')
%histogram of original image
subplot(4,2,2)
bar(hist(original(:)));
ylim([0 2*10^4]);
title('histogram of original image')
trans=((original-min(original(:)))./(max(original(:))-min(original(:)))).*256;
subplot(4,2,3)
image(trans)
title('linearly transformed image')
%histogram of lineraly transformed
subplot(4,2,4)
bar(hist(trans(:)),64);
ylim([0 2*10^4]);
title('histogram of transformed image')
%sigmoid transformation
omega=30;
sigma=20;
sigmoid=256./(1+exp((trans-omega)./sigma));
subplot(4,2,5)
image(sigmoid)
title('Sigmoid transformation')
%histogram of sigmoid
subplot(4,2,6)
bar(hist(sigmoid(:)),64);
ylim([0 2*10^4]);
title('histogram of sigmoid image')
%windowing
thre_high=200;
thre_low=70;
for i=1:512
  for j=1:512
     if trans(i,j)>= thre_high
        trans(i,j) = 255;
     else if trans(i,j) <= thre_low
        trans(i,j) = 0;
         else    
        trans(i,j)=(trans(i,j)-thre_low)*256/(thre_high-thre_low);
         end 
     end
  end
end 
subplot(4,2,7)
image(trans),title('windowing')
%histogram of window
subplot(4,2,8)
bar(hist(trans(:)),64);
ylim([0 2*10^4]);
