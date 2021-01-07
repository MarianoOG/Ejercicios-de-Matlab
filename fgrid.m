function [ fvals ] = fgrid( x,y,f )
n=length(x);m=length(y);
fvals=zeros(m,n);
for j=1:n
    for i=1:m
        fvals(i,j)=f(x(j),y(i));
    end
end
end