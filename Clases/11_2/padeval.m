function y=padeval(P,Q,x)
y=polyval(P,x)./polyval([Q;1],x);
