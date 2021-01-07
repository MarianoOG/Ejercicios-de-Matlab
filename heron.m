function [ A ] = heron( a,b,c )
%Calcula el área de un triángulo a partir de sus lados
S=(a+b+c)./2;
A=sqrt(S.*(S-a).*(S-b).*(S-c));
end

