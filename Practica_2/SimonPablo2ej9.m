G1=tf(0.8, [1 1 0.5]);
G2=tf(1, [1 0]);
G3=tf(1, [1 1]);

num=tf(1);

suma=parallel(num, G2);
multi=series(suma, G3);
rea=feedback(multi, 1);
casi=series(G1, rea);
T=feedback(casi, 1, -1)
[z, p, k]=zpkdata(T)

%Ganancia estatica de 0.8, cero en -1, polos en -0.2140 + 0.8838i; -0.21406 - 0.8838i; -1.5718; -1
opt=stepDataOptions;
opt.StepAmplitude=2;
subplot(2, 1, 1)
step(T, opt)
hold on
impulse(T)
hold off
legend('entrada escalon', 'entrada impulso')

t=(0:0.1:100);
funcio=(0:0.1:100);
funcion=t>=10;
for i=0:1:1001
    if i>=100
        funcio(i)=1;
    end
    if i>=200
        funcio(i)=2;
    end
    if i>=500
        funcio(i)=-0.5;
    end
    if i>=800
        funcio(i)=0;
    end
end

representa=funcio.*funcion;

subplot(2, 1, 2)
lsim(T, representa, t);

