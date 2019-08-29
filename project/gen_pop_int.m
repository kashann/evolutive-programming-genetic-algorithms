function [pop] = gen_pop_int(dim, n, min, max, profits, combinations, maxes)
for i=1:dim
    pop(i, 1:n) = gen_repr_int(min, max, n, combinations, maxes);
    pop(i, n+1) = objective_f(pop(i, 1:n), profits);
end