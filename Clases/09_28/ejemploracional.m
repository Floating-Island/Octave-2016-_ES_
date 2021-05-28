x=(-5:9)';
y=[-0.23;-0.25;-0.27;-0.26;0;3;-0.5;-2.14;18;1.86;0.98;0.67;0.5;0.4;0.34];
plot(x,y,'.');

A=[x.^2 x x.^0 -y.*x.^3 -y.*x.^2 -y.*x];
param=pinv(A)*y;

param


f=@(x) polyval(param(1:3),x)./polyval([param(4:6);1],x);
plot(x,y,'.',x,f(x))
norm(y-f(x))/norm(y);



