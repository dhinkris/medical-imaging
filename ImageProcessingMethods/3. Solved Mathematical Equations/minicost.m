function [cost]=minicost(R)
L=(2000-(0.5*pi.*R.^2))/(2.*R);
cost=((2*L+2.*R)*40)+(pi.*R.*50);
