x=-6:0.1:4;
y3=fu3(x);
a=fzero(@fu3,-4)
plot(x,fu3(x))
[c,b]=fminbnd(@fu3,-1,4)