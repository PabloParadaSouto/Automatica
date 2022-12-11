function[resultado] =G(k)
funcion=tf(1, [1 2 1 0]);
g=series(funcion, k);
resultado=g;
end
