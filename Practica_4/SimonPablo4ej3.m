G=tf(100,[1 6 0]);

T=feedback(G,1)
bode(T); 