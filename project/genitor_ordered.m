function [next] = genitor_ordered(parents, children, k)
%selecting future generations
[dim, n] = size(parents);
n = n - 1;
parents = sortrows(parents, n + 1);
children = sortrows(children, n + 1);
next = children;
for i=1:k
    next(i, 1:n+1) = parents(dim + i - k, 1:n+1);
end
end