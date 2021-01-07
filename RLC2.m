%Calcula impedancias
clc
R=input('Ingresa la resistencia del circuito: ')
L=input('Ingresa la inductancia del circuito: ')
C=input('Ingresa la capacitancia del circuito: ')
vs=input('Ingresa el voltaje del circuito: ')

clc
C=C*1e-9;
f=1e5:5e4:1e7; %100khz a 10Mhz
i0=vs./(R+j*2*pi*f*L-j./(2*pi*f*C));
semilogx(f,abs(i0));grid