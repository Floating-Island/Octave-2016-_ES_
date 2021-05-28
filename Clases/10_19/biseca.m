function sol_ap=biseca(h,a,b,n)
if h(a)*h(b)>=0
    error('h(a) y h(b) deben tener signos opuestos');
end
m=(a+b)/2;
for k=1:n
    if h(m)==0
        sol_ap=m;
        return;
    elseif h(a)*h(m)>0
        a=m;
    else
        b=m;
    end
    m=(a+b)/2;
end
sol_ap=m