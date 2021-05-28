function sol=N_R(H,DH,V1,N)
sol=V1;
for k=1:N
sol=sol-inv(DH(sol))*H(sol);
end