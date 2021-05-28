t=linspace(0,2*pi,1000);
for k=1:1000 %SHIFT+RETURN
    w=[1 -1; 2 0]*[cos(t(k)); sin(t(k))];
    x(k)=w(1);
    y(k)=w(2);
end %RETURN
plot(x,y) %SHIFT+RETURN
axis equal