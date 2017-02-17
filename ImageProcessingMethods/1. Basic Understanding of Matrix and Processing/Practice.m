clc
clear all
A=[1,1,1;4,2,1;9,-3,1];
B=[8;11;6];
C=inv(A)*B
D=rand(50,50);
imshow(D)
E=im2bw(D,0.6);
imshow(E)
x1=0:0.01:2;
f1=10*ones(size(x1));
x2=2.01:0.01:4.99;
f2=zeros(size(x2));;
x3=5:0.01:7;
f3=-3*ones(size(x3));
f=[f1 f2 f3];
x=[x1 x2 x3];
plot(x,f)

