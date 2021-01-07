function [ primomax primomin ] = E32( A )
v=primos(A);
x=length(v);
primomax=v(1);
primomin=v(1);
i=1;
while i<=x
    if (primomax<v(i))
        primomax=v(i);
    end
    while (primomin>v(i))
        primomin=v(i);
    end
    i=i+1;
end
end

