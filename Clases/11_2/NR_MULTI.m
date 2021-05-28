function sol=NR_MULTI(H,x0,n,epsi)
if nargin==3
    epsi=sqrt(eps(1+norm(x0)));
end
sol=x0;
for k=1:n
    sol=sol-inv(JACOB_APROX(H,sol,epsi))*H(sol);
end
