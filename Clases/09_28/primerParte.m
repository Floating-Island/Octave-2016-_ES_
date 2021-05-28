x=[-2;0.5;2.3;4.5;7;11;18];
y=[0.5;0.57;0.91;1.63;3.14;8.96;56.23];
plot(x,y,'.');
Z=log(y);
A=[x x.^0];
alfa=pinv(A)*Z;
k1=exp(alfa(2));
k2=exp(alfa(1));
f=@(x) k1*k2.^x;
plot(x,y,'.',x,f(x))
norm(y-f(x))/norm(y);
%comparo con polinomio de grado 4
Aprima=[x.^4 x.^3 x.^2 x x.^0];
c=polyfit(x,y,4);
p= @(x) polyval(c,x);
norm(y-p(x))/norm(y);
plot(x,f(x),'.',x,p(x))
