T=(-4:5)';
x=[0.6;1.05;2.55;7.5;7.5;2.55;1.05;0.6;0.36;0.24];
plot(T,x,'.')
A=[(-x.*T.^2) (-T.*x) T  T.^0  exp(-2*(T+0.5).^2)];
param=pinv(A)*x;
param
f=@(T)  (param(3)*T + param(4) + param(5)*exp(-2*(T+0.5).^2))./(param(1)*T.^2 + param(2)*T + 1);
plot(T,x,'.',T,f(T))
norm(f(T)-x)/norm(x)



%integral

I=integra(f,-4,6,100,4,3)
