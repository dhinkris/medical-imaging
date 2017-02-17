clc
clear all
x1=-2;y1=-20;
x2=0;y2=4;
x3=2;y3=68;
x4=4;y4=508;
[constants]= polcons(x1,y1,x2,y2,x3,y3,x4,y4)
a=constants(1), b=constants(2),c=constants(3),d=constants(4)