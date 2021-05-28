function x=resuelve_lu(A,b)
[L,U,P]=lu(A);
w=resuelve_L(L,P*b);
x=resuelve_U(U,w);