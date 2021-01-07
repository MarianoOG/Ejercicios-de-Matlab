function [ y ] = E1( x,n )
format compact
format long
y=1+x;
if n>2
   for i=2:n-1
      k=0;
      p=1;
      while k<i-1
         p=p*(p+1);
         k=k+1;
      end
      y=y+x^i/p;
   end
end
end

