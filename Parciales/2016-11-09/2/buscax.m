function X=buscax(g,xi)
[t,z]=RK4(g,3,[2.3;xi(1);xi(2)],4,0.1);

X=z(1:2,end);
