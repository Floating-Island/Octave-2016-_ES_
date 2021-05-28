A=[2 3 5;-1 2 4;4 1 2];
B=[13 3 15];

intervalo=tic;
[U,S,V]=svd(A);
X=V*diag((1./diag(S)))*transpose(U)*B;
toc(intervalo);

error_relativo=norm(A*X-B)/norm(B);

A
B
X

intervalo

error_relativo

if(A*X==B)
    disp('Se verifica');
end

A=randn(1500,1500);
B=randn(1500,1);

intervalo=tic;
X=resuelve_svd(A,B);
toc(intervalo);
error_relativo=norm(A*X-B)/norm(B);

A
B
X

intervalo

error_relativo

if(A*X==B)
    disp('Se verifica');
end