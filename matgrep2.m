%Obtiene la cadena y el nombre del archivo del usuario.

function [locations]=matgrep2(pattern,filename)

disp(sprintf('Patron = %s',pattern));
disp(sprintf('Nombre del archivo = %s',filename));

locations=[];
total_chars_read=0;
num=1;
position=1;
start=1;
stop=start+length(pattern)-1;
buffer_size = 512;

if (length(pattern)>buffer_size/4)
    buffer_size=length(pattern)*10;
end

%Abre el archivo lo cierra si hay un error
myfile=fopen(filename,'r');
if (myfile<0)
    error(sprintf('El archivo no existe.',filename));
    return
end

%Lee los caracteren en el buffer
[mybuffer, chars_read]=fscanf(myfile,'%c',buffer_size);
total_chars_read=total_chars_read+chars_read;

if (chars_read>0)
    done=false;
else
    done=true;
end

while(~done)
    if (stop<length(mybuffer))
        if (mybuffer(start:stop)==pattern)
            locations(num)=position;
            num=num+1;
        end
    else
        [new_chars,chars_read]=fscanf(myfile,'c',buffer_size-length(pattern));
        mybuffer=[mybuffer(start:length(mybuffer)),new_chars];
        total_chars_read=total_chars_read+chars_read;
        if (chars_read==0)
            done=true;
        end
        start=0;
        position=position-1;
    end
    start=start+1;
    stop=start+length(pattern)-1;
    position=position+1;
end

status=fclose(myfile);
if (status~=0)
    error('No se pudo cerrar adecuadamente el archivo.');
end

end