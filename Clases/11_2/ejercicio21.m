%a
t=(-6:6)';
y=[1.98;1.89;1.76;1.56;1.23;0.62;0;0.62;1.23;1.56;1.76;1.89;1.98];

[n,m]=busca_grados_pade(t,y,0.05);

n
m


[P,Q]=padefit(t,y,n,m);
g=@(x) padeval(P,Q,x);

plot(t,y,'.',t,g(t));

err=norm(g(t)-y)./norm(y);

err

%b

g(-0.5)
g(10)
g(realmax)


%c

h=@(t) buscax(t,g)-6.5;

h(1.9)


sol=NR_MULTI(h,1.9,15);

sol
h(sol)
