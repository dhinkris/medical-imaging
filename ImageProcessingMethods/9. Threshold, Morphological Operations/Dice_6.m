% script from W. Birkfellner, M. Figl, J. Hummel: "Medical Image Processing - A Basic Course", copyright 2010 by Taylor & Francis
clear;
imgOuter = imread('Dice1.jpg');
imgInner = imread('Dice2.jpg');
sumIntersection=0;
sumInner=0;
sumOuter=0;
for i=1:40
for j=1:40
if imgOuter(i,j) > 0 & imgInner(i,j) > 0
sumIntersection=sumIntersection+1;
end
if imgOuter(i,j) > 0
sumOuter=sumOuter+1;
end
if imgInner(i,j) > 0
sumInner=sumInner+1;
end
end
end
Dice=2*sumIntersection/(sumInner+sumOuter)
