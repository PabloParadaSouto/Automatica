syms s G(wn,e) ;
G(wn,e)=wn^2/((s^2+2*e*wn*s+wn^2));

wn1=2;
e1=0.5;

[N,D]=numden(G(2,0.5));
F=tf(sym2poly(N),sym2poly(D));
p1=tf(1,[1 10]);
p2=tf(1,[1 2]);
p3=tf(1,[1 0.1]);
p4=tf(1,[1 0]);
Fp1=series(F,p1);
Fp2=series(F,p2);
Fp3=series(F,p3);
Fp4=series(F,p4)
figure(1)
step(Fp1)
hold on
step(Fp2)
hold on
step(Fp3)
hold on
step(Fp4)
hold off
legend("polo en -10", "polo en -2", "polo en -0.1", "polo en 0")
figure(2)
pzmap(Fp1)
legend("polo en -10")
figure(3)
pzmap(Fp2)
legend("polo en -2")
figure(4)
pzmap(Fp3)
legend("polo en -0.1")
figure(5)
pzmap(Fp4)
legend("polo en 0")
