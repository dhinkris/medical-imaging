%Vini-Initial volume
%Vini=10^9+(10^8*(1-exp(-t/100))-(r*t));
%x=50%
%Vfin=Final volume=(x/100)*Vini=(50/100)*Vini=0.5*10^9
%Vchange=Vfin-Vini=(0.5*10^9)-(10^9+(10^8*(1-exp(-t/100))-(r*t)))
function [Vchange]=volchange(t);
global x r
%x=50; r=10^7;
V=10^9+(10^8*(1-exp(-t/100))-(r*t));
Vfin=(x/100)*(10^9);
Vchange= (Vfin-V);

