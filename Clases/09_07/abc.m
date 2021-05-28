M=[1 2 3 -1  0 4; 3 1 -1 2 2 3; 2 -1 -4 3.5 2 -1;2 3.5 6 -2 0.5 8;4 3 2 1 2 7.5];
W=[3 -1 2 1;4 5 1 3; 3 1 2 7; 0 -1 4 2];
[mM,nM]=size(M);
mM
nM
[mW,nW]=size(W);
[UM, SM, VM]=svd(M);
[UW, SW, VW]=svd(W);


%round(abs(UM*transpose(UM))) se tiene que usar abs y round porque no es exactamente lo mismo




disp('Parte a');

if(isequal(round(abs(UM*transpose(UM))),eye(mM)))
    disp('UM por la inversa da la identidad');
end
if(isequal(round(abs(UW*transpose(UW))),eye(mW)))
    disp('UW por la inversa da la identidad');
end
if(isequal(round(abs(VM*transpose(VM))),eye(nM)))
    disp('VM por la inversa da la identidad');
end
if(isequal(round(abs(VW*transpose(VW))),eye(nW)))
    disp('VW por la inversa da la identidad');
end

UM*SM*transpose(VM)
M

if(isequal(round(UM*SM*transpose(VM)),round(M)))
    disp('UM*SM*VM da M');
end
if(isequal(round(UW*SW*transpose(VW)),round(W)))
    disp('UW*SW*VW da W');
end

disp('Parte B');

if(round(norm(UM))==1 && round(norm(VM))==1 && round(norm(M))==round(norm(SM)))
    disp('Se cumple la primer propiedad para M');
end;

if(round(cond(UM))==1 && round(cond(VM))==1 && round(cond(M))==round(cond(SM)))
    if(mM>nM)
        if(round(cond(M))==SM(1,1)/SM(nM,nM))
            disp('Se cumple la segunda propiedad');
        end
    else
        if(round(cond(M))==SM(1,1)/SM(mM,mM))
            disp('Se cumple la segunda propiedad');
        end
    end
end

if(rank(UM)==mM &&rank(VM)==nM &&rank(M)==rank(SM))
    disp('Se cumple la tercer propiedad');
end

condicion=1;
for k=1:rank(M)
    if(~isequal(round(norm(M*VM(:,k))),round(SM(k,k))))
        condicion=0;
    end
    if(round(norm(VM(:,k)))~=1)
        condicion=0;
    end
end
if(condicion)
    disp('Se cumple la sexta propiedad');
end

disp('Parte c');

if(round(abs(det(UW)))==1&& round(abs(det(VW)))==1)
    disp('Se cumple la cuarta propiedad');
end

disp('Parte d');


disp('Datos');
UM
SM
VM
UW
SW
VW
