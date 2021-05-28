A=[4 2; 3 -1];
v= randn(2,1);
for k=1:100
    v=A*v/norm(A*v);
end;
autovector=v
autovalor=(A*v)./v