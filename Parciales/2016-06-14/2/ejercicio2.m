A=[-4.5:4.5;0.48,0.8,1.4,6.8,10,10,6.8,1.4,0.8,0.48];

%a

x=(A(1,:))';
y=(A(2,:))';

M=[x.^4 x.^2 x.^0 -(x.^6).*y -(x.^4).*y -(x.^2).*y];

param=pinv(M)*y;

f=@(x)  (param(1)*x.^4+param(2)*x.^2+param(3))./(param(4)*x.^6+param(5)*x.^4+param(6)*x.^2+1);

err=@(r) norm(r-x)./norm(x);

err(f(x))

n=0;
p=@(t) 0;

while(err(p(x))>=err(f(x)))
n=n+1;
coef=polyfit(x,y,n);
p=@(t) polyval(coef,t);
end;

err(p(x))


%b

h=@(x) (1/3)*integra(f,-4.5,4.5)-integra(f,x,4.5);

xi=1.1;
h(xi)


xsol=NR_MULTI(h,xi,15);

x0=xsol;
x0
h(x0)

%c

x=pinv(A)*[8.12;10.5];
x
norm(x)