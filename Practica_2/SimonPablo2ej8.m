G1=tf(1,[1 6 8]);
G2=tf(8,[1 3 0]);
s=tf('s')
t = 1:0.01:2;

G1s=feedback(1,G1)
G2s=feedback(1,G2)
figure
subplot(3,1,1),step(G1s)
subplot(3,1,2),impulse(G1s)
subplot(3,1,3),step(G1s/s);
title('Ramp')

figure(2)
subplot(3,1,1),step(G2s)
subplot(3,1,2),impulse(G2s)
subplot(3,1,3),step(G2s/s);
title('Ramp')