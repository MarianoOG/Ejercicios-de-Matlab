function [ a0,a1,b1 ] = modelo1( x,y )
%modelo por mi9nimos cuadrados de y=a0+a1cos(x)+b1sen(x)
clc
format long
n=length(x);
A=[n sum(cos(x)) sum(sin(x));
sum(cos(x)) sum(cos(x).^2) sum(sin(x).*cos(x));
sum(sin(x)) sum(sin(x).*cos(x)) sum(sin(x).^2)];
d=[sum(y) sum(y.*cos(x)) sum(y.*sin(x))]';
t=A\d;
a0=t(1),a1=t(2),b1=t(3)
end