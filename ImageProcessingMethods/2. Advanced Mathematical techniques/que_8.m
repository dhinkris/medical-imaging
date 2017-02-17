clc
clear all;
A=[3,7,-4,12;-5,9,10,2;6,13,8,11;15,5,4,1]
%max in each column
B=max(A)
C=min(A)
D=max(A,[],2)
E=min(A,[],2)