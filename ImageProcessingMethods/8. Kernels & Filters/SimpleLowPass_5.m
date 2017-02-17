% script from W. Birkfellner, M. Figl, J. Hummel: "Medical Image Processing - A Basic Course", copyright 2010 by Taylor & Francis
clear;
fp=fopen('SKULLBASE.DCM', 'r');
fseek(fp,1622,'bof');
img=zeros(512,512);
img(:)=fread(fp,(512*512),'short');
img=transpose(img);
fclose(fp);
lpimg=zeros(512,512);
for i=2:511
for j=2:511
lpimg(i,j) = 0.1*(img((i-1),j) + 2*img(i,j) + img((i+1),j) + img(i,(j-1)) + img(i,(j+1)) + img((i-1),(j-1)) + img((i-1),(j+1)) + img((i+1),(j-1)) + img((i+1),(j+1)));
end
end
minint=min(min(lpimg));
lpimg=lpimg-minint;
maxint=max(max(lpimg));
lpimg=lpimg/maxint*64;
colormap(gray);
image(lpimg)
