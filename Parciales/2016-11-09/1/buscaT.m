function W=buscaT(g,T)

[t,z]=RK4(g,0,[0.25;-0.1],T,0.01);
W=(z(1,end).^2+z(2,end).^2)';