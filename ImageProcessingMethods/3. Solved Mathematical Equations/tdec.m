function timevol=tdec(x,r);
global x r
timevol=fzero(@volchange,10);