function [ A ] = for9( f,c )
%f-filas y c-columnas
A=zeros(f,c);
k=0;
for i=f:-1:1
    for j=1+k:c-k
        A(i,j)=1;
    end
    k=k+1;
end
A
end

