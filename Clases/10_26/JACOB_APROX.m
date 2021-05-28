function J=JACOB_APROX(H,X,epsi)
if nargin==2
    epsi=sqrt(eps(1+norm(X)));
end
I=eye(max(size(X)));
for k=1:max(size(X))
    J(:,k)=(H(X+epsi*I(:,k))-H(X-epsi*I(:,k)))/(2*epsi);
end