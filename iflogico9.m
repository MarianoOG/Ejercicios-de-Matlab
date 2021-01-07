function signo=iflogico9(x)
%prueba que retorna 1 si x es mayor que 0
%prueba que retorna -1 si x es menor que 0
%prueba que retorna 0 si x=0
clc
if x>0
    signo=1;
elseif x<0
    signo=-1;
else
    signo=0;
end
end

