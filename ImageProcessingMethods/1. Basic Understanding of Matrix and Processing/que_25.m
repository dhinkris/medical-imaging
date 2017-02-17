W=6; A=80;
% By pythagoras theorem,W^2=D^2+D^2;
D=sqrt(W^2/2)  %Side of right triangle
%Total area=Area of Rectangle+Area of Right angle Triangle
%A=(L*W)+((1/2)*D^2)
L=(A-(D^2/2))/6  %length of rectangle
%Total length of fence=L+L+W+D+D
TotalLength=L+L+W+D+D
disp('Total length of fence is ')
disp(TotalLength)
