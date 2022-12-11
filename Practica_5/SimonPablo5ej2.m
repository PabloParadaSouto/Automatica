Tz=tf([1.7 0.782],[1 1 0.5],-1);
[Nz,Dz]=tfdata(Tz),
%Apartado a)
t=50;
[y,vt]=step(Tz,t);
stem(vt,y);

%Apartado b)
Ts=0.1;
[Nc,Dc]=d2cm(Nz,Dz,Ts,'zoh');
G=tf(Nc,Dc)

%Apartado c)
figure(2)
step(G)