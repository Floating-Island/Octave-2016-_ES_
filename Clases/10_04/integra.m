function I=integra(f,a,b,n,m,k)
if nargin==3
    n=20*ceil(abs(b-a));
    m=4;
    k=3;
elseif nargin==4
    m=4;
    k=3;
elseif nargin==5
    k=min([m-1,3]);
end
if a==b
    I=0;
    return
end
vab=linspace(a,b,n+1); %contiene los numeros totales que se usan para el intervalo
I=0;
for h=1:n
    xsub=linspace(vab(h),vab(h+1),m);
    ysub=f(xsub);
    coefpk=polyfit(xsub,ysub,k); %busca los coeficientes del polinomio
    coefprim=[coefpk./(k+1:-1:1) 0]; %coeficientes para la integral del polinomio.
    I=I+polyval(coefprim,vab(h+1))-polyval(coefprim,vab(h)); %suma lol hace los polinomios integrados y lo suma a lo anterior
end