x=-2:0.1:4;
y1=fu1(x);
%a=fzero('fu1',-1)
a=fzero(@(x) x+2*exp(-x)-3,-1)
plot(x,fu1(x))
%'b--*'
[b,c]=fminbnd(@fu1,0,4)
