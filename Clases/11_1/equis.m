function xdet=equis(T)
f=@(t,z) [z(2);0.5*z(1)-exp(-t).*z(2)];
[t,z]=RK4(f,0,[0.2;-0.9],T,0.01);
x=z(1,:);
xdet=x(end);