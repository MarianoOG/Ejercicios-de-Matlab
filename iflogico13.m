function iflogico13(v)
%Usa un if else y el comando any (alguno) 
if any(v>0)
    disp('Al menos un valor es positivo en el vector')
else
    disp('Al menos un valor es cero o negativo')
end
end

