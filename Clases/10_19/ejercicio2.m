%a
g=@(x) (cos(log(x+1))).^2;

Ha=@(x) integra(g,0,x).*(x.^2+1)-5;

Ha(1.82)

sol=NR_MULTI(Ha,1.82,15);
sol
Ha(sol)

%a profe
Ha(0)
Ha(2)
xsol=biseca(Ha,0,2,25);
xsol
Ha(xsol)





