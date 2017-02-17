% script from W. Birkfellner, M. Figl, J. Hummel: "Medical Image Processing - A Basic Course", copyright 2010 by Taylor & Francis
clear;
rect=zeros(100,1);
ffrect=zeros(100,1);
for j=45:55
rect(j,1)=1;
end
frect=fft(rect);
frect=fftshift(frect);
for j = 1:4
klimlow=50-j*10
klimhigh=50+j*10
for k=1:100
if (k < klimlow) | (k > klimhigh)
ffrect(k,1) = 0;
else
ffrect(k,1)=frect(k,1);
end 
end
rrect=ifft(ifftshift(ffrect));
plot(real(rrect))
ylim([-0.2 1.5])
foo=input('Press RETURN to proceed to the next rectangle pulse');
end
