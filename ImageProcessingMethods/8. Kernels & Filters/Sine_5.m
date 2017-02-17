% script from W. Birkfellner, M. Figl, J. Hummel: "Medical Image Processing - A Basic Course", copyright 2010 by Taylor & Francis
clear;
x=1:360;
wx=sin(x*pi/180);
rattlefactor = 0.1;
wxx=rattlefactor*sin(x*100*pi/180);
y=wx+wxx;
plot(y)
foo=input('Press RETURN to see the spectrum ...');
fy=fft(y);
fys=fftshift(fy);
plot(abs(fys))
foo=input('Press RETURN to see the filtered spectrum...');
for i=70:90
fys(i)=0;
fys(200+i)=0;
end
plot(abs(fys))
foo=input('Press RETURN to see the filtered sine in the spatial domain...');
rsine=ifft(ifftshift(fys));
plot(real(rsine))
