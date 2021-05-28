function y=fa(x)
    if(x~=round(x)||x<0)
        error ('no es entero ni mayor o igual a cero');
    else
        y=fctrl(x);
    end
return;