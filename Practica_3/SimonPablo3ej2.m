coef=0.707;

K1=0.004; %valor calculado para factor de amortiguamiento 0.707


rlocus(Gs(K1));
hold on
x=-253:1:0;
y=-x;
plot(x,y)
hold off


[k, poles]=rlocfind(Gs(K1))