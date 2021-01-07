%Grafica la poscicion de un cuerpo a lo largo de una orbita
ex=input('Introduce la excentricidad ')
rm=input('Introduce rmin ')
ang=linspace(0,2*pi);
r = rm.*(1+ex)./(1+ex.*cos(ang));
polar(ang,r)