A=[2 -1 3 1 -5;-1 2 -1 2 1;3 2 -1 4 2];
b=[1;2;7];
x0=pinv(A)*b;
x0 %solucion de minima norma
if(isequal(abs(A*x0),abs(b)))
    disp('Se cumple que A*x0=b');
end;
norma_x0=norm(x0)
