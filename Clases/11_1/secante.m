function x=secante(h,x0,x1,N)
x=x1;
xant=x0;
for k=1:N
temp=x-h(x).*(xant-x)./(h(xant)-h(x));
xant=x;
x=temp;
end