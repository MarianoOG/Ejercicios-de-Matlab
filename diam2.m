clc
h=input('Dame la potencia en la flecha ')
n=input('Dame las revoluciones de la flecha ')
s=input('dame el esfuerzo torsional ')
d=(((3.65e5).*h)./(n.*s)).^(1/3);
disp('el diametro requerido es: ')
disp(d)
disp('cm');