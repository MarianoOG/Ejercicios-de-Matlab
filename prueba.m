clc, clear all
%syms Rc
%R3=100;
%Zo=1/(1/Rc+2/1000)

solve('40=(1/(1/82e3+2/1000000))/(0.026*(RE*1.1+82e3)/9+RE*.1)','RE')