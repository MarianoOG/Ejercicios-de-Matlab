clc
disp('Conversiones de temperatura:')
disp('1. Celsius a Rankine')
disp('2. Farenheit a Celcius')
disp('3. Celcius a Kelvin')
disp('4. Farenheit a Rankine')
disp('5. Celcius a Farenheit')
op=input('Teclee el numero de su opcion y presione enter: ');
switch op
    case 1
        clc
        disp('1. Celsius a Rankine')
        n=input('Introduce la temperatura: ');
        fprintf('%s %f \n', 'La temperatura en Rankine es: ', 1.8*n+32+459.67)
    case 2
        clc
        disp('2. Farenheit a Celcius')
        n=input('Introduce la temperatura: ');
        fprintf('%s %f \n', 'La temperatura en Celcius es: ', (n-32)/1.8)
    case 3
        clc
        disp('3. Celcius a Kelvin')
        n=input('Introduce la temperatura: ');
        fprintf('%s %f \n', 'La temperatura en Kelvin es: ', n+273.15)
    case 4
        clc
        disp('4. Farenheit a Rankine')
        n=input('Introduce la temperatura: ');
        fprintf('%s %f \n', 'La temperatura en Rankine es: ', n+459.67)
    case 5
        clc
        disp('5. Celcius a Farenheit')
        n=input('Introduce la temperatura: ');
        fprintf('%s %f \n', 'La temperatura en Farenheit es: ', 1.8*n+32)
    otherwise
        disp('Opcion no valida')
end