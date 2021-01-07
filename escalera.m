function [ R ] = escalera(f,c)
%diagonal principal inversa con numero de la fila
for i=1:f
    for j=1:c
        if (i+j==f+1)
            R(i,j)=i;
        else
            R(i,j)=f-i+1;
        end
    end
end
R
end