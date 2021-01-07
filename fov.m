function fov( x,y )
%Comprueba que variable es verdadera
if (~x&&~y)
    disp('Los dos valores son falsos')
else
    if (~x&&y)
        disp('El valor de y es verdadero')
    elseif (x&&~y)
        disp('El valor de x es verdadero')
    else
        disp('los dos valores son verdaderos')
    end
end
end
