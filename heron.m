function [ A ] = heron( a,b,c )
%Calcula el �rea de un tri�ngulo a partir de sus lados
S=(a+b+c)./2;
A=sqrt(S.*(S-a).*(S-b).*(S-c));
end

