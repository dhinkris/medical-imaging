% script from W. Birkfellner, M. Figl, J. Hummel: "Medical Image Processing - A Basic Course", copyright 2010 by Taylor & Francis
clear;
rect=zeros(100,1);
for i=45:55
rect(i,1)=1;
end
plot(rect);
foo=input('Press RETURN to proceed to the first derivative');
drect=zeros(100,1);
for i=1:99
drect(i,1)=rect(i+1)-rect(i);
end
plot(drect)
foo=input('Press RETURN to proceed to the second derivative');
ddrect=zeros(100,1);
for i=1:99
ddrect(i,1)=drect(i+1)-drect(i);
end
plot(ddrect)
