val(0.2)
val(-0.2)


a0=biseca(@val,-0.2,0.2,50);

a0
val(a0)

z0=[0.3;-0.1;a0];
g=@(t,z) [z(2);z(3);0.1*z(1)-0.2*z(2)-exp(-t).*z(3)];
[t,z]=RK4(g,0,z0,3.5,0.01);

z(1:3,1)

plot(t,z(1,:),'.')

%parte b

new([-0.1;a0]) 

new([0.15;-0.2]) 

h=@(di) new(di)-[1.8;0];

di=NR_MULTI(h,[0.15;-0.2],12);

di

h(di)