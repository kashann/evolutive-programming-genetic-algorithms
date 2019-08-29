function [val] = mutation_creep(population, pm, min, max, margin, profits)
[dim, n] = size(population);
for i=1:dim
    val(i,1:n) = m_creep(population(i,1:n), max, min, pm, margin, profits);
end
end