function [ abs ] = norma( v )
%Calcula la norma de un vector
abs=sqrt(sum((v.^2)'));
end

