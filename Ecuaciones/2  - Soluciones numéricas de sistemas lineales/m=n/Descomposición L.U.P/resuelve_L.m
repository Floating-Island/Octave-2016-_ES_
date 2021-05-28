function w=resuelve_L(L,d)
w=zeros(size(d));
w(1,1)=d(1)/L(1,1);
for k=2:max(size(L))
    w(k,1)=(d(k)-L(k,1:k-1)*w(1:k-1))/L(k,k);
end