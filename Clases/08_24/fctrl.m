function y=fctrl(x)
 if(x>0)
        y=x.*fctrl(x-1);
 elseif x==0
     y=1;
 end
return;