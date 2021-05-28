%a

h=@(a) buscax(a)-[0.8;0.4];

ai=[0;1];
h(ai)

asol=NR_MULTI(h,ai,15);
asol
h(asol)

g=@(t,z) [-z(1)+0.5*asol(1).*z(2);z(1)+asol(2)*t.*z(2)];

[t,z]=RK4(g,0,[0.2;0.3],2.5,0.01);



plot(z(1,:),z(2,:),'.');

%b

h2=@(T) norm(Tbusca(g,T)-[0.2;0.3])-0.7;

ti=2;
h2(ti)

T=NR_MULTI(h2,ti,30);

T
h2(T)


