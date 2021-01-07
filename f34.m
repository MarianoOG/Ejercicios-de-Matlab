function [ y ] = f34( x )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
y1=4*exp(x+2).*(x<-2);
y2=x.^2.*((x<2.5)-(x<-2));
y3=(x+6.5).^(1/3).*(1-(x<2.5));
y=y1+y2+y3;
plot(x,y),grid
end

