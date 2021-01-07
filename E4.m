function [ maximp n ] = E4( A )
[a b]=size(A);
v=[];
k=1;
n=0;
while k<a
    v=[v diag(A,k)'];
    k=k+1;
end
x=length(v);
maximp=maximpar(v);
i=1;
while i<=x
    if v(i)==maximp
        n=n+1;
    end
    i=i+1;
end
end