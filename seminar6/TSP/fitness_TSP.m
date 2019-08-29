function [val] = fitness_TSP(p,c,n)
% valoarea functiei fitness din problema comis-voiajorului - n orase
% c - matricea costurilor: c(i,j)-costul tranzitiei de la i la j
% p - o permutarea reprezentand ordinea de parcurgere a celor n orase, cu
% revenire in primul oras
val=0;
for i=1:n-1
    val=val+c(p(i),p(i+1));
end;
val=c(p(1),p(n))+val;
val=1/val;
end