%Detecta bordes de la imagen:
format compact
imagen=input('Teclee el nombre del archivo entre comillas: ')
disp(sprintf('Imagen = %s',imagen));
pic=imread(imagen);
[rows,cols,cl]=size(pic);
amps=uint16(pic(:,:,1))+uint16(pic(:,:,2))+uint16(pic(:,:,3));
up=max(max(amps));dn=min(min(amps));
fact=0.5;tresh=uint16(dn+fact*(up-dn));
pix=amps(2:end,2:end);
ptl=amps(1:end-1,1:end-1);
pt=amps(1:end-1,2:end);pl=amps(2:end,1:end-1);
alloff=and(and((pix>tresh),(pt>tresh)),and((pl>tresh),(ptl>tresh)));
allon=and(and((pix<=tresh),(pt<=tresh)),and((pl<=tresh),(ptl<=tresh)));
edges=and(not(allon),not(alloff));
layer=uint8(ones(rows-1,cols-1)*255);
layer(edges)=0;
outline(:,:,1)=layer;
outline(:,:,2)=layer;
outline(:,:,3)=layer;
image(outline)
nombre=input('Teclee el nombre destino del archivo entre comillas: ')
imwrite(outline,nombre,'jpg')