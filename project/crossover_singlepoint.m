function [val] = crossover_singlepoint(pop, pc)
[dim, n] = size(pop);
for i=1:2:dim-1
    [val(i,1:n), val(i+1, 1:n)] = c_singlepoint(pop(i,1:n), pop(i+1, 1:n), pc);
end
end