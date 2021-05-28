%a
max=22;
disp('y:');
for k=1:max
    f=@(x) x.^(k-1).*exp(x-1);
    y(k)=integra(f,0,1);
end;
%b
disp('I:');
I=1-exp(-1);
for k=1:max
    
    I(k+1)=1-k*I(k);
end;
for k=1:max

        k
        Y=y(k)
        i=I(k)
        disp('siguiente:');
end;
%c
plot(1:max,y(1:max),'.',1:max,I(1:max))





