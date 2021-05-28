function X=buscax(g,t)
[t,z]=RK4(g,0,0.25,t,0.1);
X=z(end);