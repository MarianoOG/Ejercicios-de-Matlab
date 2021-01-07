function idiodo( tf )
%Calcula la corriente que fluye por un diodo
id=inline('io*(exp(q*vd./(k*tk))-1)');
tk=inline('5/9*(tf-32)+273.15');
io=2e-4;
k=1.38e23;
q=1.6e19;
vd=-0.2:0.01:0.25;
for c=[tf]
    plot(vd,id(io,k,q,tk(c),vd)),hold on
end
grid, hold off
end