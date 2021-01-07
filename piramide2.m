function [ R ] = piramide2( f,c )
if (rem(c,2)==1) %columnas impares
    for i=1:f
        for j=1:c
            if ((j<f+i)&(i+j>=f+1))
                h=c/2+0.5;
                R(i,j)=abs(j-h)+1;
            else
                R(i,j)=0;
            end
        end
    end
    R
else %columnas pares
    for i=1:f
        for j=1:c
            if ((j<f+i)&(i+j>=f+1))
                h1=c/2;
                h2=c/2+1;
                if (j<=h1)
                    R(i,j)=h1-j+1;
                else
                    R(i,j)=j-h2+1;
                end
            else
                R(i,j)=0;
            end
        end
    end
    R
end
end

