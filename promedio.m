function [ B ] = promedio( A )
[m,n]=size(A);
B=zeros(m,n);
for i=2:m-1
    for j=2:n-1
        B(i,j)=(A(i+1,j)+A(i,j+1)+A(i,j-1)+A(i-1,j))/4;
    end
end
end