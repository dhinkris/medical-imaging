x=[-1:0.01:1];
p=[3,-5,-28,-5,200];
t=polyval(p,x)
plot(x,t),grid
[x,y]=ginput(1)

