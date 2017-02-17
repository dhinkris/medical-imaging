clc
clear
x=-pi:0.1:pi;
x1=[0,pi];
x2=[-pi,0]
f1=[1,1]
f2=[-1,-1]
y=(4/pi)*(sin(x)+(sin(3*x))/3+(sin(5*x))/5+(sin(7*x))/7);
plot(x1,f1,x2,f2,x,y),xlabel('x'),ylabel('y=f(x)'),title('Fourier Sine series')
%plot(x,y),xlabel('x'),ylabel('y=f(x)'),title('Fourier Sine series')

