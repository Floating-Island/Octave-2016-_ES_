%1
disp('1:');
f=@(x) exp(x-1);
%a
disp('1a:');
integralf=integra(f,0,1,10,3,2);
integralf
%c
disp('1ac:');
ea=norm(integralf-(1-exp(-1)));
ea
%d
disp('1ad:');
if(ea<(1/180)*exp(0)*(10^(-1))^4)
    disp('ea es menor a (1/180)*exp(0)*(10^(-1))^4');
end;
%b
disp('1b:');
integralf=integra(f,0,1,10,2,1);
integralf
%c
disp('1bc:');
ea=norm(integralf-(1-exp(-1)));
ea
%d
disp('1ad:');
if(ea<(1/12)*exp(0)*(10^(-1))^2)
    disp('ea es menor a (1/12)*exp(0)*(10^(-1))^2');
end;
    
%2
disp('2:');
g=@(x) cos(x)./(x.^2+1);
%a
disp('2a:');
integralg=integra(g,-2,2,40,2,1);
integralg
%b
disp('2b:');
integralg=integra(g,-2,2,40,3,2);
integralg
%c
disp('2c:');
integralg=integra(g,-2,2);
integralg
%casi exacta
disp('2 casi exacta:');
integralg=integra(g,-2,2,400,4,3);
integralg


