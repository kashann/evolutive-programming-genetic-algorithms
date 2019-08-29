function [child1, child2] = c_singlepoint(parent1, parent2, cp)
r = rand(1);
child1 = parent1;
child2 = parent2;
if r < cp
    dim = length(parent1);
    pos = randi(dim);
    child1(pos+1:dim) = parent2(pos+1:dim);
    child2(pos+1:dim) = parent1(pos+1:dim);
end
end