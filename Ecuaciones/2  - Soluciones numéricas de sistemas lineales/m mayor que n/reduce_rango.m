function kA=reduce_rango(A,k)
[U,S,V]=svd(A);
kA=U(:,1:k)*S(1:k,1:k)*(V(:,1:k))';