%a
h=@(k) funcion(k)-0.02;
H(0.7)
H(1)
k=NR_MULTI(h,0.7,20);
k
funcion(k)

f=@(t,z) [z(2);2*k*sin(t)*cos(t)-0.5*z(1)-z(2)];

[t,z]=RK4(f,0,[0.35;-0.4],4,0.01)

X=z(1,:);

%b
t=t';
x=X';
error=1;
n=0;
while(error>0.001)
    n=n+1;
    coef=polyfit(t,x,n);
    p=@(t) polyval(coef,t);
    error=norm(p(t)-x)/norm(x);
end;
n
error
sol=integra(p,0,4);
sol