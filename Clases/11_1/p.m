function xdet=p(T)
f=@(t,z) [z(2);-10+0.1*z(2).^2];
[t,z]=RK4(f,0,[600;-0.5],T,0.01);
x=z(1,:);
xdet=x(end);