function x=resuelve_U(U,w)
L=fliplr(flipud(U));
wud=flipud(w);
x=flipud(resuelve_L(L,wud));