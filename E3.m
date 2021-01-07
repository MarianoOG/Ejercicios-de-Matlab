function [ maximpar ] = E3( A )
format compact
v=diag(A,1);
x=length(v);
maximpar=v(1);
for i=1:x;
    if (maximpar<v(i)&&rem(v(i),2)~=0)
       maximpar=v(i);
    end
end
end

