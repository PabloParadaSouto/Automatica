%Apartado a
salida=tf(1.8, [0.5 1])

opts=stepDataOptions;
opts.StepAmplitud=2;
figure(1)
step(salida)


%Apartado b
numero=temperatura(size(temperatura));

%Establezo un rango para calcular el 95%
valor_alto=numero(1)*0.95;
valor_bajo=numero(1)*0.94;

%Calculo el indice para el cual la respuesta ha llegado al 95% del valor
%final
for n=1:205
       if temperatura(n)>valor_bajo && temperatura(n)<valor_alto
           final=temperatura(n);
           indice=n;
       end
end

tiempo(indice)

%Apartado c
t=0:5;
m=0.5;
rampa=t.*m;
figure(2)
lsim(salida, rampa, t)