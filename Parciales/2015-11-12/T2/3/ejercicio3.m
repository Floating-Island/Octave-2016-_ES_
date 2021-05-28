%a
g=@(t,z) [z(2);z(3);t.*z(1)+z(2)+1];


h=@(x) buscax(g,x)-[3.6;-0.9];

xi=[0.56;0.1];

h(xi)

xsol=NR_MULTI(h,xi,15);

h(xsol)

[t,x]=RK4(g,0,[0.9;xsol(1);xsol(2)],2,0.05);

plot(t,x(1,:),'.');

%b

t=t';
y=x(1,:)';

A=[t.^3 t.^2 t t.^0 sqrt(t+2)];

param=pinv(A)*y;


xn=@(t) param(1)*t.^3+param(2)*t.^2+param(3)*t+param(4)*t.^0+param(5)*sqrt(t+2);

err=norm(xn(t)-y)./norm(y);

err

plot(t',y','.',t,xn(t));

%c

[U,S,V]=svd(x);

max=S(1,1)*8;

max

