%ode45integra la ecuacion diferencial
clc;clear all;
%se establecen condiciones iniciales y de tiempo
yzero=[1 0.2 0 0 1.4];
tspan=[0 3000];

%se resuelven las ecuaciones
[t y]=ode45(@glicolisis,tspan,yzero);
n=length(t);

%grafica los perfiles de concentracion
clf,figure(1);plot(t,y)
title('PERFILES DE CONCENTRACION DE GLICOLISIS')
xlabel('Teimpo,seg');ylabel('CONCENTRACION')
text(530,1.35,'ATP(s_1)');text(900,0.65,'ADP(S_2)')
text(1600,0.25,'Enzima ADP compleja(x_1)')
text(1600,0.09,'Enzima ATP - Enzima ADP compleja(x_2)')
text(1600,1.28,'Enzima libre(e)')

%Grafica los diagramas de fase
figure(2);plot(y(:,1),y(:,2))
title('Grafica de fase de la Glicolisis')
xlabel('ATP (s_1)');ylabel('ADP (s_2)')