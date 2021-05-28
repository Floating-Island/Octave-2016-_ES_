function X=buscax(g,xi)
[t,z]=RK4(g,0,[xi;-0.6],2,0.1);
X=z(2,end);