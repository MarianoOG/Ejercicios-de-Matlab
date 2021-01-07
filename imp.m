clc
r=input('Dame la resistencia del circuito ')
c=input('Dame la capacitancia del circuito ')
f=input('dame la frecuencia del circuito ')
z=sqrt(r.^2+(1./((2*pi).*f.*c)).^2);
disp('el diametro requerido es: ')
disp(z)
disp('ohm');