function [ in ] = esfporint(pc,di,dc,do,mo,mi,eo,ei)
pc=pc*6894.75729;
di=di*0.0254;
dc=dc*0.0254;
do=do*0.0254;
eo=eo*6894.75729;
ei=ei*6894.75729;
in=pc*dc*((dc^2+di^2)/(ei*(dc^2-di^2))+(do^2+dc^2)/(eo*(do^2-dc^2))-mi/ei+mo/eo);
in=in/0.0254;
disp('La interferencia diametral es (pulg.): ')
disp(in)
end