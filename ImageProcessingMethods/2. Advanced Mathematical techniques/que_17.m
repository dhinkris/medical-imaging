%position of diver1 r=-60i-25j+30k (xyz coordinates)
%position of diver2 w=-30i-55j+20k (x-west,y-north,z-down)
%Distance of diver1 from starting point is magnitude-norm(r)
clc
clear all
r=[-60,-25,30];
w=[-30,-55,20];
dist1=sqrt(sum(r.*r))
disp('Distance of diver1 from starting point is:')
disp(dist1)
%location of diver2 wrt diver 1 is w-r
v=w-r
%straight line distance between 2 divers is dist2 (magnitude of v)
dist2=sqrt(sum(v.*v))
disp('Distance between diver1 and diver2 is:')
disp(dist2)





