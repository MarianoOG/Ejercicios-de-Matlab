function y=iflogico6(x)
%prueba de un intervalo incorrecto
clc
if 0<x<10
    y=4*x;
elseif 10<x<40
    y=10*x;
else
    y=500;
end

end

