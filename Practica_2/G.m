function [g]=G(w, E)
num=[w^2];
den=[1 2*E*w w^2];
g=tf(num, den);
end