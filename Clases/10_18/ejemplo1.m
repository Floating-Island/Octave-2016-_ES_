H=@(X) [X(1).*X(2)-(X(3).^2).*X(1)-X(3).*X(2);cos(X(1)+X(2))-X(3)-X(1).*X(3);X(1).^2-X(1).*X(3)-X(2)-1];
H([0.1;-0.1;0.2])

DH=@(X) [X(2)-X(3).^2 X(1)-X(3) -2*X(3).*X(1)-X(2);-sin(X(1)+X(2))-X(3) -sin(X(1)+X(2)) -1-X(1);2*X(1)-X(3) -1 -X(1)];

sol=N_R(H,DH,[0.1;-0.1;0.2],10)