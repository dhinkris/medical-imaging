function [constants]= polcons(x1,y1,x2,y2,x3,y3,x4,y4)
X=[(x1^3),(x1^2),x1,1;
   (x2^3),(x2^2),x2,1;
   (x3^3),(x3^2),x3,1;
   (x4^3),(x4^2),x4,1]
Y=[y1;y2;y3;y4];
[constants]=X\Y

   
