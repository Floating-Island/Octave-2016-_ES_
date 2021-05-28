D=[20 0 0;0 4 0;0 0 2];
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
    factorv=(norm(D*v-D*vp,p)/norm(D*v,p))/err;
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
D
w
wp
dir
factormax=(norm(D*w-D*wp,p)/norm(D*w,p))/err
condit=cond(D,p)
relacion=factormax/cond(D,p)