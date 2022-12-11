Servo=tf(-10,[1 10]);
Avion=tf(-[1 5],[1 3.5 6 0]);
Controlador=2;


R=series(Controlador,Servo);
Gs=series(R,Avion);
Fs=feedback(Gs,1,-1);


t=0:0.1:10;
alpha=0.5;
ramp=alpha*t;
[y,t]=lsim(Fs,ramp,t);

err=abs(max(ramp)-max(y))
plot(t,ramp,t,y)
legend("Entrada","Salida");

PI=tf([2 1],[1 0]);

R2=series(PI,Servo);
Gs2=series(R2,Avion);
Fs2=feedback(Gs2,1,-1);

[y2,t2]=lsim(Fs2,ramp,t);
err2=abs(max(ramp)-max(y2))
figure(2)
plot(t,ramp,t,y2)
legend("Entrada","Salida");

