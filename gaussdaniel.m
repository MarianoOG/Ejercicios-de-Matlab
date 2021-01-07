clear all
clc
disp('Eliminación Gaussiana con sustitución hacia atrás.')
n=input('Ingrese el orden del sistema = ');
for i=1:n
for j=1:n+1
fprintf('coeficiente A(%d,%d) = ', i,j ) 
c(i,j)=input(''); 
end
end
c
for i=1:n-1
for j=i+1:n
L=c(j,i)/c(i,i); 
c(j,:)=c(j,:)-L*c(i,:); 
end
end
x(n)=c(n,n+1)/c(n,n); 

for i=n-1:-1:1
Suma=0;
for j=i+1:n
Suma=Suma+c(i,j)*x(j);
end
x(i)=(c(i,n+1)-Suma)/c(i,i); 
end
fprintf('Solución')
for i=1:n
fprintf('x(%d) = %d \n',i,x(i)); 
end