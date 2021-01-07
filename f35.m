function [ y ] = f35( x )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
y1=x.*(x<0);
y2=x.^2.*((x<2)-(x<0));
y3=4.*(1-(x<2));
y=y1+y2+y3;
plot(x,y,'b'),axis([-3 5 -3 5])
zoom on
end

