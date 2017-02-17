clear all
close all
clc
tot=0;
k=1;
while tot<10000
    k=k+1
    tot=(5*k^2)-(2*k)
end
disp('No. of terms: ')
disp(k)
disp('Total: ')
disp(tot)