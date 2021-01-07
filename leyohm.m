%Ley de ohm
disp('Dato a calcular: ')
disp('1. Resistencia')
disp('2. Corriente')
disp('3. Voltaje')
op=input('Teclee el numero de su opcion y presione enter: ');
switch op
    case 1
        i=input('Introduce la corriente: ');
        v=input('Introduce el voltaje: ');
        fprintf('%s %f \n', 'La resistencia es: ', v/i)
    case 2
        r=input('Introduce la resistencia: ');
        v=input('Introduce el voltaje: ');
        fprintf('%s %f \n', 'La corriente es: ', v/r)
    case 3
        i=input('Introduce la corriente: ');
        r=input('Introduce la resistencia: ');
        fprintf('%s %f \n', 'El voltaje es: ', i*r)
    otherwise
        disp('Opcion no valida')
end