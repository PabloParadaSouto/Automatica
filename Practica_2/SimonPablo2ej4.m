w1=2;
E1=0;
w2=2;
E2=0.1;
w3=1;
E3=0;
w4=1;
E4=0.2;



subplot(2, 2, 1)
impulse(G(w1, E1))
legend("Wn=2 E=0")
subplot(2, 2, 2)
impulse(G(w2, E2))
legend("Wn=2 E=0.1")
subplot(2, 2, 3)
impulse(G(w3, E3))
legend("Wn=1 E=0")
subplot(2, 2, 4)
impulse(G(w4, E4))
legend("Wn=1 E=0.2")