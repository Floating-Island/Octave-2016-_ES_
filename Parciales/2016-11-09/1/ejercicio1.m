%a

g=@(t,z) [0.5*exp(-t).*(2*z(1)-4*z(2));0.5*exp(-t).*(4*z(1)+2*z(2))];

[t,z]=RK4(g,0,[0.25;-0.1],3,0.01);

plot(z(1,:),z(2,:),'.');

%b


t=t';
w=@(x) (x(1,:).^2+x(2,:).^2)';

[n,m]=busca_grados_pade(t,w(z),0.001);
[P,Q]=padefit(t,w(z),n,m);

p=@(t) padeval(P,Q,t);

resultado=integra(p,0,3);

resultado





%c

h=@(T) buscaT(g,T)-0.2;

ti=2;

h(ti)

Tsol=NR_MULTI(h,ti,15);

h(Tsol)

Tsol