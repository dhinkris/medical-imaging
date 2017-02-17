clc
clear all
x=-5-8i;
y=10-5i;
%magnitude of xy
magX=abs(x);
magY=abs(y);
magProd=abs(x*y)
%magnitude of x/y
magDiv=abs(x/y)
%angle of xy
angleX=angle(x);
angleY=angle(y);
angleXY=angleX+angleY
%angle of x/y 
angDiv=angleX-angleY