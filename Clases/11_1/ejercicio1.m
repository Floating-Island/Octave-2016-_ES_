f=@(t,z) [z(2);0.5*z(1)-exp(-t).*z(2)];
[t,z]=RK4(f,0,[0.2;-0.9],3.5,0.01);
plot(t,z(1,:),'.')
z
t(248)
t(249)