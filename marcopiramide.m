function [ R ] = marcopiramide( f,c )
for i=1:f
    for j=1:c
        if ((j==f+i-1)|(i+j==f+1))
            R(i,j)=1;
        else
            R(i,j)=0;
        end
    end
end
R
end