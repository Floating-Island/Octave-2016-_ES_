A=[1 2 9;8 11 7;5 1 6];  %el tercero lo manda repetido, no puede existir un alfa asi
[m n]=size(A);
B=A;
autovectores=[];
autovalores=[];
for k=1:m
    v= randn(m,1);
    for k=1:100
        v=B*v/norm(B*v);
    end;
    autovectores=[autovectores v];
    aux=mean((B*v)./v);
    for d=1:size(autovalores)
        aux=aux +autovalores(d);
    end
    autovalores=[autovalores aux];
    B=A-aux*eye(m); 
end
autovectores
autovalores