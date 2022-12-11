%Defino la funcion de transferencia y hago el diagrama de bode con los
%márgenes de fase y de ganancia
G=tf(54, [1 6 0]);
figure(1)
margin(G)

%Calculo la función de transferencia en lazo cerrado y su diagrama de bode
t=feedback(G, 1);
figure(2)
bode(t)