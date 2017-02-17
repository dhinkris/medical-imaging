function sig=sigm(im);
sig = single(dicomread(im));
omega1=120;
sigma1=40;
%sigmoid transformation
trans = ((sig-min(sig(:)))/(max(sig(:))-min(sig(:)))).*256;
sigtrans1 = 256./(exp(-((trans-omega1)./sigma1)));
subplot(3,3,1)
image(sigtrans1)
title('sigm with omega 120 sigma 40')
colormap(gray(256));
omega2=70;
sigma2=20;
sigtrans2 = 256./(exp(-((trans-omega2)./sigma2)));
subplot(3,3,2)
image(sigtrans2)
title('sigm with omega 70 sigma 20')
subplot(3,3,3)
omega3=200;
sigma3=140;
sigtrans3 = 256./(exp(-((trans-omega3)./sigma3)));
subplot(3,3,3)
image(sigtrans3)
title('sigm with omega 200 sigma 140')
trans4=2.56*trans-128; 
subplot(3,3,4)
image(trans4)
title('window 1')
trans5=5.12*trans-384;
subplot(3,3,5)
image(trans5)
title('window 2')
logtr=log(sig+1025);
subplot(3,3,6)
imagesc(logtr),title('using log')


