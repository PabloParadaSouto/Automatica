Z1=3;Z2=6;Z3=12;
step(T(Z1),T(Z2),T(Z3));
legend({'y=T(z=3)','y=T(z=6)','y=T(z=12)'},'Location','southwest');
function f=T(x1)
f=tf([15/x1,15],[1 3 15]);
end