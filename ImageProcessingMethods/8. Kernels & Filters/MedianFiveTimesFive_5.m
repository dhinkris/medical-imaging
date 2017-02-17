% script from W. Birkfellner, M. Figl, J. Hummel: "Medical Image Processing - A Basic Course", copyright 2010 by Taylor & Francis
clear;
fp=fopen('SKULLBASE.DCM', 'r');
fseek(fp,1622,'bof');
img=zeros(512,512);
img(:)=fread(fp,(512*512),'short');
img=transpose(img);
fclose(fp);
mfimg=zeros(512,512);
rhovect = zeros(25,1);
for i=3:510
for j=3:510
idx = 1;
for k = -2:2
for l = -2:2
rhovect(idx)=img((i+k),(j+l));
idx = idx + 1;
end
end
rhovect=sort(rhovect);
mfimg(i,j) = rhovect(13,1);
end
end
minint=min(min(mfimg));
mfimg=mfimg-minint;
maxint=max(max(mfimg));
mfimg=mfimg/maxint*64;
colormap(gray);
image(mfimg)
