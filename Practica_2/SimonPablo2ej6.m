w1=2;
E1=0.5;

Tc1=-0.5; %cero en 2
Tc2=0.5; %cero en -2
G=tf([4 0], [1 2 4]); %cero en 0
G2=tf(4, [1 2 4]); %sistema sin cero

subplot(2, 2, 1)
step(T(w1, E1, Tc1))
hold on
step(T(w1, E1, Tc2))
hold on
step(G)
hold on
step(G2)
legend('cero en 2', 'cero en -2', 'cero en 0', 'sin cero')
hold off

subplot(2, 2, 2)
pzmap(T(w1, E1, Tc1))
hold on
pzmap(T(w1, E1, Tc2))
hold on
pzmap(G)
hold on 
pzmap(G2)
hold off


w2=2;
E2=1;

Tc1=-0.5; %cero en 2
Tc2=0.5; %cero en -2
Tc3=1/0.1; %cero en -0.1
G2=tf(4, [1 2 4]); %sistema sin cero
G=tf([4 0], [1 2 4]); %cero en 0

subplot(2, 2, 3)
step(T(w2, E2, Tc1))
hold on
step(T(w2, E2, Tc2))
hold on
step(T(w2, E2, Tc3))
hold on
step(G)
hold on
step(G2)
legend('cero en 2', 'cero en -2', 'cero en -0.1', 'cero en 0', 'sin cero')
hold off

subplot(2, 2, 4)
pzmap(T(w2, E2, Tc1))
hold on
pzmap(T(w2, E2, Tc2))
hold on
pzmap(T(w2, E2, Tc3))
hold on
pzmap(G)
hold on 
pzmap(G2)
hold off