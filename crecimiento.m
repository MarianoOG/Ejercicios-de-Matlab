%peces/tiempo con crecimiento y(t)=yo*e^t

close all;axes;hold on;
syms t
y=inline('vectorize(y0*exp(t))','t','y0');
for y0=0.00002:0.0002:0.001
    ezplot(y(t,y0),[0 10 0 20])
end
grid