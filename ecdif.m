%Grafica compotamiento de y'=3ysen(y)+t sobre -6<=t<=4,-2<=y<=4
[t y]=meshgrid(-6:0.25:4,-2:0.25:4);
rvec=3.*y.*sin(y)+t;
dy=rvec./sqrt(1+rvec.^2); %normaliza campo vectorial
dt=1./sqrt(1+rvec.^2);
quiver(t,y,dt,dy);
axis([-6 4 -2 4])
quiver(t,y,dt,dy,0.5);
hold on
rhs=inline('3*y*sin(y)+t','t','y');
[t y]=ode45(rhs,[-5 6],-1);plot(t,y)
[t y]=ode45(rhs,[-5 -6],-1);plot(t,y)
[t y]=ode45(rhs,[-5 6],2);plot(t,y)
[t y]=ode45(rhs,[-5 6],2);plot(t,y)