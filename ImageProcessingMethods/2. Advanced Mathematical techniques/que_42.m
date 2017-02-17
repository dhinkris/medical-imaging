clc
clear all;
x=0:0.1:7;
a=3.*(x.^2)-(12.*x)+20;
b=(x.^2)-(7.*x)+10;
y=a./b;
plot(x,y)
axis([0,7,-50,110])

   

    