%a
y=@(t,x) (t.*(x.^2)*2)./((t.^2+1).^2);

h=@(T) buscax(y,T).*T-1;

tf=3.1;

h(tf)

tsol=NR_MULTI(h,tf,15);

h(tsol)

[t,x]=RK4(y,0,0.25,tsol,0.1);

plot(t,x,'.');

%b
t=t';
x=x';

[n,m]=busca_grados_pade(t,x,0.001);
[P,Q]=padefit(t,x,n,m);
g=@(t) padeval(P,Q,t);

err=@(r) norm(r-x)./norm(x);

p=@(t) 0;
gr=0;

while(err(p(t))>=0.001)
gr=gr+1;
coef=polyfit(t,x,gr);
p=@(t) polyval(coef,t);
end;

plot(t,x,'.',t,g(t),'*',t,p(t));

%c
g(4)
p(4)


g(10)
p(10)

g(100)
p(100)

g(realmax)
p(realmax)

%elijo g porque p tiende a -infinito cuando t tiende a infinito



