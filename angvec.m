function [ ang ] = angvec(v,w)
%Calcula el ángulo entre dos vectores
[a b]=size(v);
[c d]=size(w);
nv=sqrt(sum((v.^2)'));
nw=sqrt(sum((w.^2)'));
ang=acos(sum((v.*w)')/(nv*nw));
%angulo en radianes
end

