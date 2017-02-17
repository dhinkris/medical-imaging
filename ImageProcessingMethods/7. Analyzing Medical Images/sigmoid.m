function sig=sigmoid(im);
sig = single(dicomread(im));
omega=250;
sigma=200;
%sigmoid transformation
trans = ((sig-min(sig(:)))/((max(sig(:))-min(sig(:))))).*256;
sigtrans = 256./(exp(-((trans-omega)./sigma)));
subplot(3,3,5)
image(sigtrans)
title('sigmoid transformation')
colormap(gray(256));
subplot(3,3,6)
bar(hist(sigtrans))
title('histogram of sigmoid transformed')
