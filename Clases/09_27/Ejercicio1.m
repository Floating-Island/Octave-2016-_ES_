x=(-2.5:0.5:7.5)';
y=[-1.7;-0.7;0.4;1.3;2;2.3;2.3;2.1;1.8;1.6;1.7;2;2.8;3.7;4.8;5.9;6.7;7.2;7.4;7.3;7];
plot(x,y,'.') %? ones(6,1) ? ones(size(x)
A=[sin(x) cos(x) x x.^0];
k=pinv(A)*y;
g= @(x) k(1)*sin(x)+k(2)*cos(x)+k(3)*x+k(4);
plot(x,y,'.',x,g(x))
norm(y-g(x))/norm(y)
k
g(2.7)
g(8.5)
g(25)