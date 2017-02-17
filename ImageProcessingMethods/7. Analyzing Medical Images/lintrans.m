function z = lintrans(ima);
z = single(dicomread(ima));
%original image
subplot(3,3,1)
image(z)
title('original image')
%linear transformation
trans = ((z-min(z(:)))/((max(z(:))-min(z(:))))).*256;
subplot(3,3,2)
image(trans)
colormap(gray(256))
title('linear transformation')
subplot(3,3,3)
bar(hist(z),64)
title('histogram of original')
subplot(3,3,4)
bar(hist(trans),64)
title('histogram of linear transformed')
logtr=log(z+1025);
subplot(3,3,7)
image(logtr)
