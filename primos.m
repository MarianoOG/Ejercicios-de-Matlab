function [ v ] = primos( A )
temp=A(:)';
x=length(temp);
v=[];
for i=1:x
if temp(i)==2
    v=[v temp(i)];
else
    for j=2:temp(i)-1
       if (rem(temp(i),j)==0), break, end 
       if (temp(i)-1==j)
           v=[v temp(i)];
       end
    end
end
end
end

