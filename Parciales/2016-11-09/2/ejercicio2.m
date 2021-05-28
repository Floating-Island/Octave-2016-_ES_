%a
g=@(t,z) [z(2);z(3);0.25*((z(1)).^2)-0.125*((z(2)).^2)+z(2)-0.2];

h=@(xi) buscax(g,xi)-[3.6;2.4];

xi=[1;1];

h(xi)



xsol=NR_MULTI(h,xi,15);

xsol

h(xsol)


[t,z]=RK4(g,3,[2.3;xsol(1);xsol(2)],4,0.1);

plot(t,z(1,:),'.');

%b

tp=t';
x=z(1,:)';

A=[log(2)*tp log(2)*tp.^0];

param=pinv(A)*log(x);

f=@(t) 2.^(param(1).*t+param(2));

err=norm(f(tp)-x)./norm(x);

err

plot(tp,x,'.',tp,f(tp));


