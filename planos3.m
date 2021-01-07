function planos3( vec )
%grafica de planos paralelos
x=-1:0.1:1;y=x;[X,Y]=meshgrid(x,y);
for i=vec
    z=i+3*Y+2*X;
    surf(x,y,z)
    hold on
end
end

