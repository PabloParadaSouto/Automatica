G1=tf([1 -4], [1 1 3 9 16 10]);
G2=tf([1 8], [1 1 6 2 3]);
G3=tf([1 3 8], [1 4 8 8 7 4]);

subplot(3,2,1)
step(G1)

subplot(3,2,3)
step(G2)

subplot(3,2,5)
step(G3)

subplot(3,2,2)
pzmap(G1)

subplot(3,2,4)
pzmap(G2)

subplot(3,2,6)
pzmap(G3)