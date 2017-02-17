clear;
dimension=128;
fp=fopen('PSF128.dcm','r');
fseek(fp,-(dimension*dimension*2),'eof');
img=zeros(dimension,dimension);
img(:)=fread(fp,(dimension*dimension*2),'short');
fclose(fp);
thresh = 300;
weights=0;
centroid=zeros(2,1);
for i=1:dimension 
    for j=1:dimension
        rho=img(i,j);
        if rho > thresh
           weights=weights+rho;
           centroid=centroid+rho*[i j]';
        end
    end
end
centroid=round(centroid/weights);
shift=[(centroid(1,1)-round(dimension/2)) (centroid(2,1)-round(dimension/2))]';
cimg=zeros(dimension,dimension);
for i=1:dimension
    for j=1:dimension
        rho=img(i,j);
        if rho > thresh
            if (i-shift(1,1) > 0) && (i-shift(1,1) < dimension) &&...
                (j-shift(2,1) > 0) && (j-shift(2,1) < dimension)
                cimg((i-shift(1,1)),(j-shift(2,1)))=img(i,j);
            end
        end
    end
end
mtfimg = fft2(cimg);
mtfimg=abs(fftshift(mtfimg));
maxmtfimg=max(max(mtfimg));
mtfimg=mtfimg/maxmtfimg;
mtf=zeros(round(dimension/2),1);
for i=1:round(dimension/2)
    mtf(i)=mtfimg(round(dimension/2),((round(dimension/2)-1) +i));
end
plot(mtf)

