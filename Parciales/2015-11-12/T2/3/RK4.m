function [t,X]=RK4(F,t0,X0,T,h)
pasos=ceil(abs(T-t0)/h);
t=linspace(t0,T,pasos+1);
X=zeros(length(X0),length(t));
X(:,1)=X0;
hutil=t(2)-t(1);
for i=2:pasos+1
    s1=F(t(i-1),X(:,i-1));
    s2=F(t(i-1)+hutil/2,X(:,i-1)+s1*hutil/2);
    s3=F(t(i-1)+hutil/2,X(:,i-1)+s2*hutil/2);
    s4=F(t(i),X(:,i-1)+s3*hutil);
    X(:,i)=X(:,i-1)+((s1+2*s2+2*s3+s4)/6)*hutil;
end