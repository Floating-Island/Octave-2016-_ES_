%a
g=@(t,z) [z(2);0.05*(t.^2).*z(2)-0.5*z(1)];
h=@(xi) buscax(g,xi)-0.5;

xi=0.0001;

h(xi)

xsol=NR_MULTI(h,xi,20);

xsol

h(xsol)

[t,z]=RK4(g,0,[xsol;-0.6],2,0.1);

x=z(1,:);

plot(t,x,'.');

%b
resultado=z(2,end)-z(2,1);
resultado

%c

[t,z]=RK4(g,0,[xsol;-0.6],5.5,0.1);

x=z(1,end);

x
