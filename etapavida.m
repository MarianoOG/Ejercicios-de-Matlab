function etapavida( edad )
%imprime la etapa de la vida en la que te encuentras
if edad>=65
    disp('Adulto mayor')
else
    if edad>=20
        disp('Adulto')
    else
        if edad<13
            if edad<0
                disp('Aun no naces')
            elseif edad==0
                disp('Estas naciendo')
            else
                disp('Niño')
            end
        else
            disp('Adolescente')
        end
    end
end
end

