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
vab=linspace(a,b,n+1);
I=0;
for h=1:n
    xsub=linspace(vab(h),vab(h+1),m);
    ysub=f(xsub);
    coefpk=polyfit(xsub,ysub,k);
    coefprim=[coefpk./(k+1:-1:1) 0];
    I=I+polyval(coefprim,vab(h+1))-polyval(coefprim,vab(h));
end