function iflogico2(x) 
%funci�n que prueba si un valor es adecuado para introducir una funci�n
%como argumento positivo 
clc
if x>0
    disp('El logaritmo natural de x es ')
    y=log(x)
else
    disp('El argumento de log(x), debe ser positivo')
end

end

