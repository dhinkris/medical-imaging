clc
clear all
close all
total=0;
k=0;
while total<20000
    k=k+1;
    total=total+((10*k^2)-(4*k)+2);
end
disp('No.of terms: ')
disp(k)
disp('total')
disp(total)
    