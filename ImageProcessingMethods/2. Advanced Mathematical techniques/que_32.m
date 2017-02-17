clc
clear all
A=[7,-3,7];
B=[-6,2,3];
C=[2,8,-8];
d=cross(B,C);
d1=cross(A,d)
x=dot(A,C);
x1=B*x
y=dot(A,B);
y1=C*y
z=x1-y1