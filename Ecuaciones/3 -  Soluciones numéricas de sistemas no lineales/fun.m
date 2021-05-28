 function y=fun(x,n)
a=cputime;
if nargin==1
    n=2+round(log(0.5*x.^2+1));
end
y=exp(-x.^2/5)+x;
if n==0
    y=y-1;
    %a
    %cputime
    %puf=1
    %pause
    while cputime<a+2
        %puf=puf+1
        a=a-0.0001*rand(1,1);
        %b=cputime
        %pause;
    end
    return;
end
y=fun(y,n-1);