clc
clear all;
x=-1:0.1:1;
y=polyval([3,-5,-28,-5,200],x);
plot(x,y),xlabel('x'),ylabel('y'),grid
[x,y]=ginput(1)
disp('Coordinates of Peak of the curve: ')
disp([x,y])

