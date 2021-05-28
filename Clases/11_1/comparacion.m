f=@(t,x) x;
[t,x]=euler(f,0,1,2,0.01);
abs(x(end)-exp(2))


f=@(t,x) x;
[t,x]=MP(f,0,1,2,0.01);
abs(x(end)-exp(2))

f=@(t,x) x;
[t,x]=RK2(f,0,1,2,0.01);
abs(x(end)-exp(2))


f=@(t,x) x;
[t,x]=RK3(f,0,1,2,0.01);
abs(x(end)-exp(2))

f=@(t,x) x;
[t,x]=H3(f,0,1,2,0.01);
abs(x(end)-exp(2))

f=@(t,x) x;
[t,x]=RK4(f,0,1,2,0.01);
abs(x(end)-exp(2))
