function A=iflogico8(x)
%Prueba para numeros pares
clc
if x<0
    A='x es un numero negativo'
elseif rem(x,2)==0
    A='x es un numero par'
else
    A='x es impar'
end
    

end

