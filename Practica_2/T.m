function [g]=T(w, E, Tc)
num=[w^2*Tc w^2];
den=[1 2*E*w w^2];
g=tf(num, den);
end