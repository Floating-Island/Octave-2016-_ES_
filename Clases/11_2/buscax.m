function xf=buscax(T,pol)
y=@(t,z) z.*pol(t) +0.25*t;
[t,z]=RK4(y,0,2,T,0.01);

xf=z(1,end);