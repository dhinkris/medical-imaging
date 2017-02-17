clc
clear all
A=[4,-2,1;6,8,-5;7,9,10];
B=[6,9,-4;7,5,3;-8,2,1];
C=[-4,-5,2;10,6,1;3,-9,8];
%associative property
x1=A*(B+C)
y1=(A*B)+(A*C)
%distributive property
x2=(A*B)*C
y2=A*(B*C)
