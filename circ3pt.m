function [ D E F ] = circ3pt( ax1,ay,bx,by,cx,cy )
%Circulo definido por 3 puntos
format rat
A=[ax1 ay 1; bx by 1; cx cy 1];
b=[-1*(ax1^2+ay^2);-1*(bx^2+by^2);-1*(cx^2+cy^2)];
s=A\b;
D=s(1) ,E=s(2) ,F=s(3)
end