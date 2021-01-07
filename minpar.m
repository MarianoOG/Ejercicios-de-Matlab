function [ s ] = minpar( v )
%Devuelve el impar maximo
x=length(v);
s=v(1);
for i=1:x
    if (s>v(i)&&rem(v(i),2)==0)
       s=v(i);
    else
        if (rem(s,2)~=0)
            s=v(i);
        end
    end
end
if (rem(s,2)~=0)
    s=[];
    disp('No hay pares')
end
end