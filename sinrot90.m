function [ B ] = sinrot90( A )
%Gira la matriz
[m,n]=size(A);
k=1;
for i=1:m
    for j=1:n
        T(1,k)=A(i,j);
        k=k+1;
    end
end
k=1;
for i=1:m
    for j=n:-1:1
        B(j,i)=T(k);
        k=k+1;
    end
end
B
end

