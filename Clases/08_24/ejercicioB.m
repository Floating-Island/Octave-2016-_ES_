y=[];
for k=1:2000
    if(rem(k^2,100)==29) %cada k es escalar, no hace falta el .^2
        y=[y,k];%el/los valores que tiene 'y' y se le agrega 'k'.
    end
end
y
y.^2