function X=buscax(g,xi)
[t,z]=RK4(g,0,[0.8;xi(1);xi(2)],2,0.05);
X=[z(1,end);z(3,end)];