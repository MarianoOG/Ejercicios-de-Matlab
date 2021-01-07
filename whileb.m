function whileb( A )
%Encuentra el numero mayor y el numero menor en una matriz
[a b]=size(A);
N=a*b;
i=1;
prom=sum(sum(A))/N;
M=A(1); m=M;
while (i<=N)
    if (A(i)>M)
        M=A(i);
    elseif (A(i)<m)
        m=A(i);
    end
    i=i+1;
end
fprintf('%s %f \n','El numero mayor es: ', M)
fprintf('%s %f \n','El numero menor es: ', m)    
fprintf('%s %f \n','El promedio es: ', prom)    
end