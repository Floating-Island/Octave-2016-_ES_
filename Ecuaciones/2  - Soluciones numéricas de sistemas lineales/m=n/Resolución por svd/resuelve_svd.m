function x=resuelve_svd(A,b)
[U,S,V]=svd(A);
x=V*diag(1./diag(S))*U'*b;