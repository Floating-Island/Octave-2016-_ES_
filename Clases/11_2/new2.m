function df=new2(di)
z0=[10.07;di(1);di(2)];
g=@(t,z) [z(2);z(3);z(1).^2-z(2).^2-1+z(2)];
[t,z]=RK4(g,3,z0,4,0.1);
df=z(1:2,end);