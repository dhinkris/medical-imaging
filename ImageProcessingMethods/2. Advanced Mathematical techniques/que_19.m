clc
clear all;
% 5-by-3 matrix-amount spent on each item each month
A=[1500,1200,1800;1650,1100,2200;2400,2000,1200;750,1250,1000;1000,2000,1500]
% Total spent in May June July-sum columns
Total1=sum(A)
disp('Total Spent each month:')
disp(Total1)
%Total spent on each material in 3 mnths-sum rows
Total2=sum(A,2)
disp('Total Spent on each material:')
disp(Total2)
%Total spent on all material in 3 mnths
Total3=sum(Total2)
disp('Total spent on all material:')
disp(Total3)