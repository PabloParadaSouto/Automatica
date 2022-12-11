G1=tf(3.75,[0.3 1]);
K1=0.25;
G1K1=feedback(G1,K1);
G2=tf(0.5,[1 0]);
G1K1G2=series(G1K1,G2)
figure(1)
step(G1K1G2)

Km1=[20,30,40,50];
figure(2)
step(V(Km1(1)),V(Km1(2)),V(Km1(3)),V(Km1(4)));

legend("Función para Km=20")

% Podemos ver que la ganancia estacionaria es 1
function [resultado] = V(Km)
G1=tf(3.75,[0.3 1]);
K1=0.25;
G1K1=feedback(G1,K1);
G2=tf(0.5,[1 0]);
G1K1G2=series(G1K1,G2);
G1K1G2Km=series(G1K1G2,Km);
resultado=feedback(G1K1G2Km,1);
end