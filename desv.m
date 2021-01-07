function [ G ] = desv( v )
%Calcula la desviacion estándar
[a b]=size(v);
prom=sum(v')/b;
G=sum((sqrt(((v-prom).^2)./(b-1)))');
end

