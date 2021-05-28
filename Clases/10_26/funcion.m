function energia=funcion(k)
F=@(t,z) [z(2);2*k*sin(t)*cos(t)-0.5*z(1)-z(2)];
[t,z]=RK4(F,0,[0.35;-0.4],4,0.01);
energia=(z(2,end).^2)/2;