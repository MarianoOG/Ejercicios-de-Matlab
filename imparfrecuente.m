function [ numero repeticiones ] = imparfrecuente( A )
v=A(:)';
x=length(v);
impares=[];
frecuencia=[];
for i=1:x %Recorre la matriz %Primer ciclo for
    if (rem(v(i),2)~=0) %Comprueba si es impar
        y=length(impares); %Recorre los impares
        if (y==0)
            frecuencia(1)=1;
            impares(1)=v(i);
        end
        for j=1:y %Segundo ciclo for
            if (impares(j)==v(i)) %Comprueba si se repite
                frecuencia(j)=frecuencia(j)+1;
                break
            else
                impares=[impares v(i)];
                frecuencia(y+1)=1;
            end 
        end
    end
end
z=length(frecuencia);
if (z>0)
    repeticiones=frecuencia(1);
    for k=1:z %3er ciclo for
        if (repeticiones<frecuencia(k))
            repeticiones=frecuencia(k);
            numero=impares(k);
        end
    end
else
    disp('No hay impares')
    numero=0;
    repeticiones=0;
end
end