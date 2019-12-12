function [sd]=get_POC(POC)

Y=POC;
Y(isnan(Y)) = 0;
[x,y]=size(Y);
h=sum(Y);
h1=h(1)+h(y);
l=sum(Y,2);
l1=l(1)+l(x);
sd=4*sum(sum(Y))-2*h1-2*l1+Y(1)+Y(1,y)+Y(x,1)+Y(x,y);
sd=sd/4*1.6e+07;
