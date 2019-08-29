function [element] = gen_repr_int(min, max, n, combinations, maxes) 
found = 0;
while found == 0
    for i=1:n
        element(i) = min + unidrnd(max-min);
    end
    if validation(element, combinations, maxes) == 1
        found = 1;
    end
end
end