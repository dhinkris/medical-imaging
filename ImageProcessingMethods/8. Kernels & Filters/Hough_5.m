% script from W. Birkfellner, M. Figl, J. Hummel: "Medical Image Processing - A Basic Course", copyright 2010 by Taylor & Francis
clear;
img = imread('evil.jpg');
minint=min(min(img));
img=img-minint;
maxint=max(max(img));
img=round(img/maxint);

himg=zeros(360,442);
for i=1:310
for j=1:310
if img(i,j) > 0
for ang=1:360
theta=ang*pi/180;
r=round((i*cos(theta))+(j*sin(theta)));
if r > 0
himg(ang,r)=himg(ang,r)+1;
end
end
end
end
end

perc=10;
maxint=max(max(himg));
for i=1:360
for j=1:442
if himg(i,j) > maxint-perc*maxint/100
himg(i,j) = 64;
else
himg(i,j) = 0;
end
end
end

transimg=zeros(310,310);
for maxphi=1:360
for maxr=1:442;
if himg(maxphi,maxr) > 0
normalvect=zeros(1,2);
unitvect=zeros(1,2);
normalvect(1,1)=maxr*cos((maxphi)*pi/180);
normalvect(1,2)=maxr*sin((maxphi)*pi/180);
unitvect(1,1)=-normalvect(1,2);
unitvect(1,2)=normalvect(1,1);
unitvect=unitvect/(sqrt(unitvect(1,1)^2+unitvect(1,2)^2));

len=0;
i=round(normalvect(1,1));
j=round(normalvect(1,2));
while (i > 1) & (i < 309) & (j > 1) & (j < 309)
i=round(normalvect(1,1)+len*unitvect(1,1));
j=round(normalvect(1,2)+len*unitvect(1,2));
transimg(i,j)=64;
len=len+1;
end

unitvect=-unitvect;
len=0;
i=round(normalvect(1,1));
j=round(normalvect(1,2));
while (i > 1) & (i < 309) & (j > 1) & (j < 309)
i=round(normalvect(1,1)+len*unitvect(1,1));
j=round(normalvect(1,2)+len*unitvect(1,2));
transimg(i,j)=64;
len=len+1;
end
end
end
end

colormap(gray)
image(transimg)
imwrite(transimg,'line.jpg');
