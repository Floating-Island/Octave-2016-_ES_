function [P,Q]=padefit(x,y,n,m)
A=[];
for k=n:-1:0
    A=[A x.^k];
end
for k=m:-1:1
    A=[A -y.*(x.^k)];
end
param=pinv(A)*y;
P=param(1:n+1);
Q=param(n+2:end);