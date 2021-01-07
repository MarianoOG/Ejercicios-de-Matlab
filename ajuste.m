function [ a b c ] = ajuste(x,y)
x1=sum(exp(-0.47.*x));
x2=sum(exp(-0.06.*x));
x3=sum(exp(-0.94.*x));
x4=sum(exp(-0.53.*x));
x5=sum(exp(-0.12.*x));
n=length(x);
A=[n x1 x2;x1 x3 x4;x2 x4 x5];
y1=sum(y);
y2=sum(y.*exp(-0.47.*x));
y3=sum(y.*exp(-0.06.*x));
b=[y1 y2 y3]';
r=A\b;
a=r(1)
b=r(2)
c=r(3)
end

