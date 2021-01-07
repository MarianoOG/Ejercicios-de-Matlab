function [ max,min ] = esf( xx,yy,xy )
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
max=(xx+yy)/2+sqrt(((xx-yy)/2)^2+xy^2)
min=(xx+yy)/2-sqrt(((xx-yy)/2)^2+xy^2)
end

