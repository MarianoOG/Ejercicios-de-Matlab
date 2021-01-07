function [x1,x2]=iflogico3(a,b,c)
%calcula un determinante en base a 3 valores
d=b^2-4*a*c;
if d==0
    x1=-b/(2*a), x2=x1
else
    x1=(-b+sqrt(d))/(2*a),x2=(-b-sqrt(d))/(2*a)
end


end

