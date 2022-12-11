G1=tf([5 20],[1 4 20]);
G2=tf([-2 1],[1 2 1 2]);
G3=tf(200,[ 1 1 5 6 0]);
[Num1,Den1]=tfdata(G1);
[Num2,Den2]=tfdata(G2);
[Num3,Den3]=tfdata(G3);

[Nz,Dz]=c2dm(Num1,Den1,0.1,'zoh')
[Nz2,Dz2]=c2dm(Num2,Den2,0.1,'zoh')
[Nz3,Dz3]=c2dm(Num3,Den3,0.1,'zoh')

[z1,p1,k1]=tf2zp(Nz,Dz)
[z2,p2,k2]=tf2zp(Nz2,Dz2)
[z3,p3,k3]=tf2zp(Nz3,Dz3)

Tz=tf(Nz,Dz,-1)
pzmap(Tz); % Solo es estable la primera
figure(2)
Tz2=tf(Nz2,Dz2,-1)
pzmap(Tz2)
figure(3)
Tz3=tf(Nz3,Dz3,-1)
pzmap(Tz3)


