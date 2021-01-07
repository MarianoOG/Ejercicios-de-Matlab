function y=iflogico7(x)
%Corrección de la funcion anterior
clc
if (0<x)&(x<10)
    y=4*x;
elseif (10<x)&(x<40)
    y=10*x
else 
    y=500
end

end

