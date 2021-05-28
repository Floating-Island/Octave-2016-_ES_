y=@(t,x) (2*t.*x.^2)./((t.^2+1).^2);

t0=0;
y0=0.2;

h=@(T) buscax(y,t0,y0,T).*T-2;

tf=9;

h(tf)


tsol=NR_MULTI(h,tf,15);

h(tsol)

[t,x]=RK4(y,t0,y0,tsol,0.1);

plot(t,x,'.');

%b

t=t';
x=x';

[n,m]=busca_grados_pade(t,x,0.001);
[P,Q]=padefit(t,x,n,m);
g=@(t) padeval(P,Q,t);

err=@(r) norm(r-x)./norm(x);

err(g(t)) % chequeo error de g.

plot(t',x','.',t,g(t));

p=@(t) 0;
n=0;

while(err(p(t))>=0.001)
n=n+1;
coef=polyfit(t,x,n);
p=@(t) polyval(coef,t);
end

plot(t',x','.',t,g(t),'*',t,p(t));

%c

g(10)
p(10)

g(100)
p(100)

g(realmax)
p(realmax)

%se usa g porque x nunca es -infinito cuando el tiempo tiende a infinito,
% aunque tampoco es NaN. x en tiempo tendiendo al infinito se vuelve una
% constante.
