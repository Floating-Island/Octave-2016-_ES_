x=[-1.5;0;1;2.5;4;8.5];
y=[0.1;6.3;10.5;15.7;23.1;38.8];
plot(x,y,'.') %ó ones(6,1) ó ones(size(x)

A=[x x.^0];
k=pinv(A)*y %ó k=resuelve_chol(A'*A,A'*y)
g= @(x) k(1)*x+k(2)*1;

plot(x,y,'.',x,g(x))
norm(y-g(x))/norm(y)
norm(y-(4.2*x+6.3))/norm(y)