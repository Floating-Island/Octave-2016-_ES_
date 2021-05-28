function X=buscax(a)
g=@(t,z) [-z(1)+0.5*a(1).*z(2);z(1)+a(2).*t.*z(2)];
[t,z]=RK4(g,0,[0.2;0.3],2.5,0.01);
X=z(1:2,end);