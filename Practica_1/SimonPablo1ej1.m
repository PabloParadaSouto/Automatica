K=tf(3,1);  %Ganancia K=3
G1=tf(1, [1 1]);    %Funcion G1(s)
G2=tf(4, 1);    %Funcion G2(s)
G3=tf(1, [1 0]);    %Funcion G3(s)
H1=tf(1,1); %Funcion H1(s)
H2=tf(1, [1 3]);    %Funcion H2(s)
H3=tf(1, [1 5]);    %Funcion H3(s)
%Calculamos realimentacion G1 H3
G1H3=feedback(G1, H3);
%Calculamos en serie G1H3*G2
G1H3G2=series(G1H3, G2);
%Calculamos realimentacion G1H3G2 H2
G1H3G2H2=feedback(G1H3G2, H2);
%Calculamos realimentacion G1H3G2H2 H1
G1H3G2H2H1=feedback(G1H3G2H2, H1);
%Calculamos en serie G1H3G2H2H1*G3
G1H3G2H2H1G3=series(G1H3G2H2H1, G3);
%Calculamos en serie G1H3G2H2H1G3 K
G1H3G2H2H1G3K=series(G1H3G2H2H1G3, K);
%Calculamos realimentacion G1H3G2H2H1G3K 1
G1H3G2H2H1G3Kuni=feedback(G1H3G2H2H1G3K, 1)
