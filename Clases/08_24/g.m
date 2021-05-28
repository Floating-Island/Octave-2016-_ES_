function y=g(x)
if x<-1
    y=2;
    elseif x<2
        y=(x+3).^2;
        elseif x<4
            y=1+exp(-x);
            else
                y=cos(x)./sqrt(x.^2+1);
end;
return;
%se debe poner return cuando se tienen los valores de las variables de
%salida.
%La funcion termina al final del archivo si no se pone return.
%Tambièn se puede terminar la funciòn con >>error('...');
%                                          