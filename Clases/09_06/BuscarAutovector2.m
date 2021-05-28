B=A-5*eye(2);
v= randn(2,1);
for k=1:100
    v=B*v/norm(B*v);
end;
autovector=v
autovalor=5+(B*v)./v