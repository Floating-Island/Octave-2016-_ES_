h=@(t) equis(t)+1.5;

h(2.47)
h(2.48)
T=biseca(h,2.47,2.48,40);
T
h(T)