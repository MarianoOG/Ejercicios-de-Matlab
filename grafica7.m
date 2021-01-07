function grafica7
%GUI pag. 39 - 40 Smith
%Inicia colores
back_color = [0 0 0];
axis_color = [1 1 1];

%Crea una figura
hFigure = figure;
%El comando drawnow asegura que la figura 
%sea dibujada antes de que las propiedades se definan
drawnow
%Establece las propiedades de la figura y define
%la funcion callback del movimiento del mouse
set(    hFigure,...
        'color', back_color,...
        'colormap', colormap(jet(256)),...
        'name', '3D Data Display',...
        'numbertitle', 'off');
%Se crea un objeto ejes (Axes)
hAxes = axes;

%Establece propiedades de los ejes

set(    hAxes,...
        'box', 'on',...
        'color', back_color,...
        'xcolor', axis_color,...
        'ycolor', axis_color,...
        'cameraposition', [0 0 0],...
        'camerapositionmode', 'manual',...
        'nextplot', 'replacechildren');
    
%Se definen las etiquetas de los ejes        
title('Patron de difraccion desde aperturas rectangulares','color', axis_color);
xlabel('X', 'color', axis_color);
ylabel('Y', 'color', axis_color);
zlabel('Z', 'color', axis_color);

%Grafica del patron de difraccion desde 2 aperturas rectangulares cierran
%juntas
x = -3*pi:0.1:3*pi;
y = -3*pi:0.1:3*pi;
d = pi;
c = 0;
[m, n]= size(x);

for j = 1:n
    for i = 1:n
        
        if x(i) ~= 0
            xt = sin(x(i))^2/x(i)^2 + sin(x(i) + d)^2/(x(i) + d)^2;
        else
            xt = 1;
        end
        
        if y(j) ~= 0
            yt = sin(y(j))^2/y(j)^2;
        else
            yt = 1;
        end
        
        f(i,j) = abs(xt * yt);
    end
end

%Grafica las superficies en 2 dimensiones de f(i,j) usnado surf()
surf(hAxes, x, y, f, 'Linestyle', 'none');

%Hace una animacion de la camara para una vista en 3 dimensiones
pos_max = 100;

for i = 0:pos_max
    set(hAxes, 'cameraposition', [i i 10-i/20]);
    drawnow
end

for i = pos_max:-2:-pos_max
    set(hAxes, 'cameraposition', [i pos_max 10-pos_max/20]);
    drawnow
end





























