function y = dosfunciones( x )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
y(:,1)=1./(1+x.^2);
y(:,2)=x./(1+x.^2);
end

