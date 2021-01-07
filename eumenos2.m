function [ r ] = eumenos2( x,n )
r=1;
for i=n:-1:1
    if (rem(i,2)~=0)%impares
        r=x+i/r;
    else %pares
        r=2*x+i/r;
    end
end
r=sqrt(pi)/2-(0.5*exp(-x^2))/r;
end

