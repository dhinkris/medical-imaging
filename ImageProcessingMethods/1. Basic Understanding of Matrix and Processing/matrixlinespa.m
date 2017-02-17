linspace(0,8,5);
Y=[1,2,3,4;-5,6,7,8;13,14,-15,16;9,10,11,12];
y1=Y(2:3,2:4)
y2=Y(4,2)
y3=Y(:,1)
A=[1,2,3,4];
X=A*A'
z=sqrt(X)
z1=norm(A)
z2=abs(Y)
[x,k]=min(Y)
b1=sum(Y)
b2=sort(Y)
b3=Y+1
Y1=Y+5
Y(:,:,2)=Y1



