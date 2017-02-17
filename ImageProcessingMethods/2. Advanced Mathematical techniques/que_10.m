clc
clear all
A=[1,4,2;2,4,100;7,9,7;3,pi,42];
B=log(A)
% to choose second row of B
C=B(2,:)
%sum of second row of B
D=sum(C,2)
% second column of B with first column of A
E=A(:,1).*B(:,2)
%max of E
e1=max(E)
%first row of A by third column of B
F=(A(1,:))'./B([1 2 3],3)
%sum of resultant vector
f1=sum(F)
