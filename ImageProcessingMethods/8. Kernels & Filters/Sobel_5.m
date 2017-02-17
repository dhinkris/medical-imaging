% script from W. Birkfellner, M. Figl, J. Hummel: "Medical Image Processing - A Basic Course", copyright 2010 by Taylor & Francis
clear;
fp=fopen('SKULLBASE.DCM', 'r'); 
fseek(fp,1622,'bof'); 
img=zeros(512,512); 
img(:)=fread(fp,(512*512),'short'); 
img=transpose(img); 
fclose(fp);
diffimg=zeros(512,512);
for i=2:511 
for j=2:511 
dx = -img((i-1),(j-1))-2*img((i-1),j)-img((i-1),(j+1)) + img((i+1),(j-1))+2*img((i+1),j)+img((i+1),(j+1));
dy = -img((i-1),(j-1))-2*img(i,(j-1))-img((i+1),(j-1)) + img((i-1),(j+1))+2*img((i),(j+1))+img((i+1),(j+1));
diffimg(i,j) = sqrt(dx*dx+dy*dy); 
end 
end 
minint=min(min(diffimg)); 
diffimg=diffimg-minint; 
maxint=max(max(diffimg)); 
diffimg=diffimg/maxint*64; 
colormap(gray); 
image(diffimg)
