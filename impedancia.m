function [ z ] = impedancia( r,c,f )
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
z=sqrt(r.^2+(1./((2*pi).*f.*c)).^2)
end

