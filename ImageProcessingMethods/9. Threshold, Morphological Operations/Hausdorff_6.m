% script from W. Birkfellner, M. Figl, J. Hummel: "Medical Image Processing - A Basic Course", copyright 2010 by Taylor & Francis
clear;
imgOuter = imread('Hausdorff1.jpg');
imgInner = imread('Hausdorff2.jpg');
dmax=zeros(2,1);
d=zeros(1600,1);
ind=1;
for i=1:40
for j=1:40
if imgInner(i,j) > 0
    dist=57;
for k=1:40
for l=1:40
if imgOuter(k,l) > 0
dd=sqrt((i-k)^2+(j-l)^2);
if dd < dist
    dist=dd;
end
end
end
end
d(ind,1) = dist;
ind=ind+1;
end
end                    
end
dmax(1,1)= max(d);
d=zeros(16128,1);
ind=1;
for i=1:40
for j=1:40
if imgOuter(i,j) > 0
    dist=57;
for k=1:40
for l=1:40
if imgInner(k,l) > 0
dd=sqrt((i-k)^2+(j-l)^2);
if dd < dist
    dist=dd;
end
end
end
end
d(ind,1) = dist;
ind=ind+1;
end
end                    
end
dmax(2,1)= max(d);
HausdorffDistance=round(max(dmax))
