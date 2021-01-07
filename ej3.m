R1=1.65e3
R2=3.3e3
C=220e-9
syms s
Av1=(R2*R1*C^2*s^2)/(R1*R2*C^2*s^2+2*R1*C*s+1)
Fl=310.0263
Fh=3000
Fr=sqrt(Fl*Fh)
X=[Fl/100,Fl/10,Fl,Fr,Fh,Fh*10,Fh*100]
V1=abs(subs(Av1,X.*i*pi*2,s))


C1=9.4e-9
C2=4.7e-9
R3=7.815
Av2=1/(C1*C2*R3^2*s^2+2*C2*R3*s+1)
V2=abs(subs(Av2,X.*i*pi*2,s))