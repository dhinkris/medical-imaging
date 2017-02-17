% script from W. Birkfellner, M. Figl, J. Hummel: "Medical Image Processing - A Basic Course", copyright 2010 by Taylor & Francis
clear;
StepOne_Hough_6;
StepTwo_DilateHough_6;
StepThree_Threshold_6;
clear;
dilimg=imread('brachydilate.pgm');
dilimg=round(dilimg/255.0);
thimg=imread('brachythreshold.pgm');
thimg=round(thimg/255.0);
mask=zeros(512,512);
mask=thimg.*dilimg*255;

pgmfp = fopen('Cross.pgm','w');
str=sprintf('P2\n');
fprintf(pgmfp,str);
str=sprintf('512 512\n');
fprintf(pgmfp,str);
maximumValue=max(max(mask));
str=sprintf('%d\n',maximumValue);
fprintf(pgmfp,str);
for i=1:512
for j=1:512
str=sprintf('%d ',mask(i,j));
fprintf(pgmfp,str);
end
end
fclose(pgmfp);

colormap(gray);
mask=mask/4;
image(mask)
