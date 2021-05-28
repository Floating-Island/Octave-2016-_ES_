function X=resuelve_svd(A,B)

[U,S,V]=svd(A);

X=V*diag(1./diag(S))*transpose(U)*B;
return;
