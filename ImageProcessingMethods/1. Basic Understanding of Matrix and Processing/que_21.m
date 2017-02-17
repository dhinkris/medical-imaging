t=1:0.2:3;
T=6*log(t)-7*exp(0.2*t);
plot(t,T)
title('Time & Temp'),xlabel('Time(min)'),ylabel('Temp(Celsius)')