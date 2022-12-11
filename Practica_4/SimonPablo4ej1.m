k1=0.1;
k2=2;
k3=10;

subplot(3,2,1)
margin(G(k1));
legend("K=0.1")
subplot(3,2,3)
margin(G(k2));
legend("K=2")
subplot(3,2,5)
margin(G(k3));
legend("K=10")

subplot(3,2,2)
step(feedback(G(k1),1))
subplot(3,2,4)
step(feedback(G(k2), 1))
subplot(3,2,6)
step(feedback(G(k3), 1))

function[resultado] =G(k)
funcion=tf(1, [1 2 1 0]);
g=series(funcion, k);
resultado=g;
end
