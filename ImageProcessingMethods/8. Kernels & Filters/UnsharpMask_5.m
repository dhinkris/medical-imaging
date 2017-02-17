% script from W. Birkfellner, M. Figl, J. Hummel: "Medical Image Processing - A Basic Course", copyright 2010 by Taylor & Francis
clear;
fp=fopen('SKULLBASE.DCM', 'r');
fseek(fp,1622,'bof');
img=zeros(512,512);
img(:)=fread(fp,(512*512),'short');
img=transpose(img);
fclose(fp);
lpimg=zeros(512,512);
umimg=zeros(512,512);
weight=1;
for i=2:511
for j=2:511
lpimg(i,j) = 0.1*(img((i-1),j) + 2*img(i,j) + img((i+1),j) + img(i,(j-1)) + img(i,(j+1)) + img((i-1),(j-1)) + img((i-1),(j+1)) + img((i+1),(j-1)) + img((i+1),(j+1)));
umimg(i,j) = img(i,j) - weight*lpimg(i,j);
end
end
minint=min(min(umimg));
umimg=umimg-minint;
maxint=max(max(umimg));
umimg=umimg/maxint*64;
colormap(gray);
image(umimg)
