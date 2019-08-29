function [Pop] = gen_pop_TSP(c,n,dim)
% functia utilizata de GA pentru generarea populatiei la momentul initial
% in problema TSP (comis-voiajorului)cu n orase
% c - matricea costurilor
% dim - numarul indivizilor din populatie
Pop=zeros(dim,n+1);
for i=1:dim
    Pop(i,1:n)=gen_perm(n);
    % sau apelul functiei MATLAB randperm :Pop(i,1:n)=randperm(n);
    Pop(i,n+1)=fitness_TSP(Pop(i,1:n),c,n);
end;
end

