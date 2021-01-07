function elipse( p1,p2,p3,p4 )
%Calcula la ecuacion de la elipse al introducir cuatro puntos
A=[p1(1)^2 p1(2)^2 p1(1) p1(2);
    p2(1)^2 p2(2)^2 p2(1) p2(2);
    p3(1)^2 p3(2)^2 p3(1) p3(2);
    p4(1)^2 p4(2)^2 p4(1) p4(2)];
b=[-1 -1 -1 -1]';
x=A\b;
fprintf('%s %f %s %f %s %f %s %f %s \n','La formula es: ',x(1),'x^2 +',x(2),'x +',x(3),'y^2 +',x(4),'y - 1 = 0')
end