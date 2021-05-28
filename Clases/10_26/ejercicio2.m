M=@(t) [(2/pi())*atan(t) 1 0;(exp(-t)-1) 0 exp(-t);1 1 0];
%a
H=@(t) norm(M(t))-2.131;
H(1)
H(-1)
H(0.989)
sol=NR_MULTI(H,-1,15);
H(sol)
norm(M(sol))
%b

%i
%||A*X||=||a||.||X||
solucion=2.131*3



%ii
A=M(sol)
[U S V]=svd(A);
Z=V(:,1)*1;
norm(Z)
norm(A*Z)
%c

f=@(t,x) 0.1*t*M(t)*x;

x0=[0.3;0.1;-0.4];
[t,x]=RK4(f,0,x0,2.5,0.001);
plot3(x(1,:),x(2,:),x(3,:),'.')
