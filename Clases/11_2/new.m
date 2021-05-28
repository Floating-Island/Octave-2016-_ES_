function df=new(di)
z0=[0.3;di(1);di(2)];
g=@(t,z) [z(2);z(3);0.1*z(1)-0.2*z(2)-exp(-t).*z(3)];
[t,z]=RK4(g,0,z0,3.5,0.01);
df=z(1:2,end);