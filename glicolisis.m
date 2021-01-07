function [ dy ] = glicolisis( t,y )
g=2;n1=0.003;n2=2.5*n1;
k1=0.1;k_1=2*k1;k2=0.1;k3=0.2;k_3=k3;
s1=y(1);s2=y(2);x1=y(3);x2=y(4);e=y(5);

dy=[n1-k1*s1*x1+k_1*x2 
    k2*x2-k3*s2^g*e+k_3*x1-n2*s2 
    -k1*s1*x1+(k_1+k2)*x2+k3*s2^g*e-k_3*x1 
    k1*s1*x1-(k_1+k2)*x2 
    -(-k1*s1*x1+(k_1+k2)*x2+k3*s2^g*e-k_3*x1)-(k1*s1*x1-(k_1+k2)*x2)];

end