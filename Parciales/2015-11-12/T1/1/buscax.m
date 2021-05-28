function X=buscax(y,t,y0,T)
[t,z]=RK4(y,t,y0,T,15);
X=z(end);
