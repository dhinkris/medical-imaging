% script from W. Birkfellner, M. Figl, J. Hummel: "Medical Image Processing - A Basic Course", copyright 2010 by Taylor & Francis
clear;
rect=zeros(100,1);
for i=35:65
rect(i,1)=15;
end
saw=zeros(100,1);
for i=1:15
saw(i,1)=i-1;
end
for i=16:29
saw(i,1)=29-i;
end
plot(rect)
ylim([-1 20]);
foo=input('Press RETURN to proceed to the sawtooth to be convolved...');
plot(saw)
ylim([-1 20]);
foo=input('Press RETURN to proceed...');
fr=fft(rect);
frs=fftshift(fr);
fs=fft(saw);
fss=fftshift(fs);
fconv=frs.*fss;
fconvs=ifftshift(fconv);
rconv=ifft(fconvs);
plot(real(rconv))
