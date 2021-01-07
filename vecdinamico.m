function [ envec ] = vecdinamico
n=input('Introduce un valor positivo: ');
envec=n;
while (1)
    n=input('Introduce un valor positivo: ');
    if n<0,break,end
    envec=[envec; n];
end

end

