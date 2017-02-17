function [capacitance]=capa(L,r,d,E)
capacitance=(pi*E*L)/(log((d-r)/r));