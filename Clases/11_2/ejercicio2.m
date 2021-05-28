h=@(di) new2(di)-[27.31;27.29];

h([11;7])

di=NR_MULTI(h,[11;7],15);

di


h(di)



z0=[10.07;di(1);di(2)];
g=@(t,z) [z(2);z(3);z(1).^2-z(2).^2-1+z(2)];
[t,z]=RK4(g,3,z0,4,0.1);

plot(t,z(1,:),'.')


%b

t=t';
z=z';

A=[t.^0 t];

param=pinv(A)*log(z);
f=@(t) exp(param(1)).*exp(param(2)*t);

param

plot(t',z(:,1)','.',t,f(t))