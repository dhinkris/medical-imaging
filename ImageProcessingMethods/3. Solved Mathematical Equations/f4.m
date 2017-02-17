function [f,B]=f4(x)
f=x(1).*exp(-x(1).^2-x(2).^2);
B=x.*exp(-x.^2);