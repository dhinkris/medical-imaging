
clear
clc; close all
%Answer for T4.5-1 
xmax=20; xmin=-10;

dx=(xmax-xmin)/500;
x=xmin:dx:xmax;
for k=1: length(x)
  if x(k)>=10
      y(k)=9*sin(5*x(k)-50)+31;
  elseif x(k)>=0
      y(k)= 3*x(k) +1;
  else
      y(k)=sqrt(x(k)^2+1);
  end
end
plot(x, y), title('T4.5-1')

kk1=round((-5-xmin)/dx); kk2=round((5-xmin)/dx); kk3=round((15-xmin)/dx);
disp(x(kk1)), (x(kk2)), (x(kk3))
disp(y(kk1)), (y(kk2)), (y(kk3))