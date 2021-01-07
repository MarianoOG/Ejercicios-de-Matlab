function [ x ] = fracconv( y )
n=y*2-1;
x=0;
for i=1:y
    x=(n^2)/(2+x);
    n=n-2;
end
x=x+1
n==-1
end

