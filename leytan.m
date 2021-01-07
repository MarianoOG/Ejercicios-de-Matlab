function [ B a b ] = leytan( A,C,c )
%LEY DE TANGETES
B=180-A-C
x1=tand((B-C)/2);
x2=tand((C+B)/2);
x3=x1/x2;
a=(c*sind(A))/sind(C)
b=c*(x3+1)/(1-x3)
end