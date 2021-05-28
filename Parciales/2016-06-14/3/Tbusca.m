function Z=Tbusca(g,T)
[t,z]=RK4(g,0,[0.2;0.3],T,0.01);
Z=z(1:2,end);