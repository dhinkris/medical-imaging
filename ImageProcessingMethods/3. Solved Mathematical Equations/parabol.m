function [pol1]= parabol(a,b,c)
pol1=@polfind;
% Nested Function
function y=polfind(x)
y=polyval([a,b,c],x);
end 
end
