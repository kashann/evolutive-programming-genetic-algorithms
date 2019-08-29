function [child] = m_creep(element, max, min, pm, margin, profits)
[~, n] = size(element);
child = zeros(1, n);
for i=1:n-1
    r = rand(1);
    if r < pm
        dif = margin - unidrnd(2*margin);
        child(i) = child(i) + dif;
        if child(i) < min
            child(i) = min;
        end
        if child(i) > max
            child(i) = max;
        end
    else
        child(i) = element(i);    
    end
end
child(n) = objective_f(child(1:n-1), profits);
end