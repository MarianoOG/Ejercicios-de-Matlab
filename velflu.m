function [ v ] = velflu( h1,h2 )
%Calcula la velodidad de un fluido dadas las diferentes alturas y gravedad
v=sqrt(2*9.81*(h2-h1));
end

