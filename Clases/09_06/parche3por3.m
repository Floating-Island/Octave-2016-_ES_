A=[1 2 9;8 11 7;5 1 6];
d1=-3,8920;
d2=15,3744;

g(t)=@(t) det(A-t*eye(3))./((t-d1)*(y-d2));

d3=-g(0)*5/(g(5)-g(0);
d3