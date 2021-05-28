disp('Busco el vector tal que ||T*v|| sea maximo');
p=inf;
T=[2 5 -3;1 1 2];
w=[0; 0; 0];
for k=1:power(10,6)
    v=randn(3,1);
    v=v/norm(v,2);
    if(norm(T*w,p)<norm(T*v,p))
        w=v;
    end
end
p
w
disp('norm(T,p):');
norm(T,p)
disp('norm(T*w):');
norm(T*w)