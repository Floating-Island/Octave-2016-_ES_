x=(-8:8)';
y=[3.89;3.59;3.22;2.78;2.22;1.46;0.47;0.41;1.39;1.7;2.26;2.79;3.23;3.59;3.89;4.16;4.4];


A=[x.^2 x x.^0 abs(x)];
k=pinv(A)*exp(y);

x
y
k

h=@(x) log(k(1)*x.^2+k(2)*x +k(3)*x.^0 +k(4)*abs(x));

plot(x,y,'.',x,h(x))
er=norm(h(x)-y)/norm(y);
er

%b

g=@(x) integra(h,0,abs(x))-x.^2;

g(1)
g(3)
sol=biseca(g,1,3,30)
g(sol)
integra(h,0,sol)
sol^2