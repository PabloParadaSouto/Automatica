K=tf(4,1); %
G1=tf(1,[1 1]);
G2=tf([1 0],[1 0 2]);
G3=tf(1,[1 0 0]);
G4=tf([4 2],[1 2 1]);
G5=tf([1 0  2],[1 0 0 14]);
G6=tf(50,1);
G3G6=feedback(G3,G6,1);
G1G2=series(G1,G2);
G1G2G4=feedback(G1G2,G4);
G1G2G4G3G6=series(G1G2G4,G3G6);
G1G2G4G3G6G5=feedback(G1G2G4G3G6,G5);
G1G2G4G3G6G5K=series(G1G2G4G3G6G5,K)
pzmap(G1G2G4G3G6G5K)
% El orden del sistema es 10