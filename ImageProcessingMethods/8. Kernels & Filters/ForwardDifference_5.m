% script from W. Birkfellner, M. Figl, J. Hummel: "Medical Image Processing - A Basic Course", copyright 2010 by Taylor & Francis
clear;
fp=fopen('SKULLBASE.DCM', 'r'); 
fseek(fp,1622,'bof'); 
img=zeros(512,512); 
img(:)=fread(fp,(512*512),'short'); 
img=transpose(img); 
fclose(fp);
diffimg=zeros(512,512);
for i=1:511 
for j=1:511 
diffimg(i,j) = -img(i,j) + img(i+1,j); 
end 
end 
minint=min(min(diffimg)); 
diffimg=diffimg-minint; 
maxint=max(max(diffimg)); 
diffimg=diffimg/maxint*64; 
colormap(gray); 
image(diffimg) 
