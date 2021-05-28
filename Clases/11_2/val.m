function VF=val(a0)
z0=[0.3;-0.1;a0];
g=@(t,z) [z(2);z(3);0.1*z(1)-0.2*z(2)-exp(-t).*z(3)];
[t,z]=RK4(g,0,z0,3.5,0.01);
VF=z(2,end);