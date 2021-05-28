T=[3 -1 2;1 1 5;-1 0 4];
p=2;
w=[0;0;0];
wp=[0;0;0];
dir=[0;0;0];
err=0.1;
factormax=0;
for k=1:power(10,6)
    v=randn(3,1);
    u=randn(3,1);
    u=u/norm(u,p);
    vp=v+err*norm(v,p)*u;
    factorv=(norm(T*v-T*vp,p)/norm(T*v,p))/err;
    if(factorv>factormax)
        factormax=factorv;
        w=v;
        wp=vp;
        dir=u;
    end;
end
disp('Para un error relativo de');
err
p
T
w
wp
dir
factormax=(norm(T*w-T*wp,p)/norm(T*w,p))/err
condit=cond(T,p)
relacion=factormax/cond(T,p)