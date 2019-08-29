function [parents] = SUS (pop, c)
%Stochastic Universal Sampling
[dim, n] = size(pop);
avg = mean(pop(:,n));
sigma = std(pop(:,n));
val = avg - c*sigma;
n = n - 1;
g = zeros(1, n);
for i=1:dim
    g(i) = max(pop(i, n+1) - val, 0);
end
suma = sum(g);
p = g/suma;
q = p;
for i=2:dim
    q(i) = q(i-1) + p(i);
end

r = unifrnd(0, 1/dim);
i = 1;
j = 1;
while i <= dim %while there are not enough parents selected
   while r < q(j)
       parents(i,1:n+1) = pop(j,1:n+1);
       i = i + 1;
       r = r + 1/dim;
   end
   j = j + 1; %try on the next individual
end
end