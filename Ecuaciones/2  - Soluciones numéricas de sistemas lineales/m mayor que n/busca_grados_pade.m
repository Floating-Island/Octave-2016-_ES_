function [n,m]=busca_grados_pade(x,y,err_rel_propuesto)
n=0;
m=1;
gt=n+m;
[P,Q]=padefit(x,y,n,m);
err=norm(y-padeval(P,Q,x))/norm(y);
while err>=err_rel_propuesto
    gt=gt+1;
    for k=gt:-1:1
        m=k;
        n=gt-k;
        [P,Q]=padefit(x,y,n,m);
        err=norm(y-padeval(P,Q,x))/norm(y);
        if err<err_rel_propuesto
            return;
        end
    end
end