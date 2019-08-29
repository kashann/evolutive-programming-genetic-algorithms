function [result] = validation(element, combinations, maxes)
used = element * combinations;
leftovers = used - maxes;
result = 1;
[~, n] = size(element);
for i=1:n
    if leftovers(i) > 0
        result = 0;
    end
end
end