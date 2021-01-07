%Ofrece 4 opciones una para cada uno de las opercaciomes aritmeticas
%basicas
disp('Introduzca 2 numeros. ')
a=input('Introduzca el primer numero: ');
b=input('Introduzca el segundo numero: ');
disp('Elija la opcion a calcular. ')
disp('Suma (+)')
disp('Resta (-)')
disp('Producto (*)')
disp('Division (/)')
op=input('opcion = ');
switch op
    case '+'
        disp('La suma de los numeros es: ')
        s=a+b;
        disp(s)
    case '-'
        disp('La resta de los numeros es: ')
        r=a-b;
        disp(r)
    case '*'
        disp('La multiplicacion de los numeros es: ')
        m=a*b;
        disp(m)
    case '/'
        disp('La division de los numeros es: ')
        d=a/b;
        disp(d)
    otherwise
        disp('Opcion incorrecta.')
end
