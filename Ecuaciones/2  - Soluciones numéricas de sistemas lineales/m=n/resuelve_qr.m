function x=resuelve_qr(A,b)
[Q,R,P]=qr(A);
w=resuelve_U(R,Q'*b);
x=P*w;