function x=resuelve_chol(A,b)
R=chol(A);
x=resuelve_U(R,resuelve_L(R',b));