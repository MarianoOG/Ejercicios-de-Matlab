function [ y ] = viga( l,E,I,w )
clc
x=linspace(0,l);
m=l/2;
y1=((-w.*x).*((16.*x.^3-24.*l.*x.^2+9.*l^3)./(384.*E*I))).*((x<m)&(x>=0));
y2=((-w.*x).*((8.*x.^3-24.*l.*x.^2+17*l.^2.*x+9.*l.^3)./(384.*E.*I))).*((x<=l)&(x>=m));
y=y1+y2;
plot(x,y);
end

