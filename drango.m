function drango(xo,xf,yo,yf)
%Funcion definida en tres tramos, el usuario delimita el intervalo mostrado
x1=linspace(-100,0);
x2=linspace(0,5);
x3=linspace(5,100);
y1=linspace(-4,-4,length(x1));
y2=x2-4;
y3=-20*exp(-0.5*x3);
plot(x1,y1,x2,y2,x3,y3), grid, axis([xo xf yo yf])
%el limite inferior es -100 y el superior 100
end

