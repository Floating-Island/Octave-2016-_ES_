hp=@(t) p(t)-200;

hp(30)
hp(20)

T=secante(hp,20,30,10);

T
hp(T)
p(T)


hv=@(t) v(t)+0.5;

hv(0.4)
hv(1)

T=secante(hv,0.4,1,10);

T
hv(T)
v(T)