%simula el enfriamiento de una placa, resuelve la ecuacion de Poisson por
%diferencias finitas
a=0;b=6;n=61;x=linspace(a,b,n);
c=0;d=4;m=41;y=linspace(c,d,m);
tvals=fgrid(x,y,@placat);
tvals(1,:)=zeros(1,n);tvals(m,:)=zeros(1,n);
tvals(:,1)=zeros(m,1);tvals(:,n)=zeros(m,1);
npasos=8500;close all,figure,colormap('hot')
for tau=0:npasos
    pcolor(tvals)
    shading interp
    caxis('manual')
    title(sprintf('tau=%1d',tau),'Fontsize',14)
    axis equal off
    pause(0.00001)
    shg
    tvals=promedio(tvals);
end