K1=10;
K2=200;
K3=500;
figure(1);
step(Ts(K1),Ts(K2),Ts(K3));
title('Respuesta ante un escalon unitario');
legend("T(s) para K=10","T(s) para K=200","T(s) para K=500");
xlabel("Tempo");
figure(2);
pzmap(Ts(K1),Ts(K2),Ts(K3));
linearSystemAnalyzer(Ts(K1),Ts(K2),Ts(K3))
function[Ts] = Ts(K)
Ts = tf(5*K,[1 15 K]);
end