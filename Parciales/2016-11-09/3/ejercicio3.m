%a
DF=@(x) [x(3)+2*x(1);4*x(2).*x(3)+1;x(1)-3*((x(3)).^2)+2*((x(2)).^2)];

xi=[0;1;0.7];

DF(xi)

x0=NR_MULTI(DF,xi,15);

x0
DF(x0)


%b

H=JACOB_APROX(DF,x0);
H
autovalores=eig(H);
autovalores
%Es un punto de silla.


%c

[U,S,V]=svd(H);

vsol=V(:,1);

h=@(V) norm(H*V)-S(1,1);

vsol

h(vsol)





