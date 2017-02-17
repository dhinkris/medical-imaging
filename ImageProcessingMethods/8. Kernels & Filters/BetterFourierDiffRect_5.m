% script from W. Birkfellner, M. Figl, J. Hummel: "Medical Image Processing - A Basic Course", copyright 2010 by Taylor & Francis
clear;
rect=zeros(1000,1);
for j=45:55
rect(j,1)=1;
end
rect=transpose(rect);
frect=fft(rect);
frect=fftshift(frect);
k=[(1:1000)]/1000;
k=fftshift(k);
drect=ifft(ifftshift(((-i*k)).*frect));
plot(real(drect))
