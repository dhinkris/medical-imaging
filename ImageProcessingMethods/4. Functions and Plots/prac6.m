clc
clear all
close all
x=input('Enter the value of x: ')
y=input('ENter the value of y: ')
r=sqrt(x^2+y^2)
if x>=0
    theta=atan(y/x)
else
    theta=atan(y/x)+pi
end
disp(r)
theta=theta*(180/pi)
disp(theta)
