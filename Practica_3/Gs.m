function [result] = Gs(K)
G=tf([1 1],[1 0 0]);
GK=series(K,G);
result=feedback(GK,1);
end

