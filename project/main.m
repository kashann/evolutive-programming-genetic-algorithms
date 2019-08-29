function [] = main(dim, pc, pm, margin, k, nr)
blends = load('blends.txt');
max_products = load('max_products.txt');
profits = load('profits.txt');

[~, n] = size(max_products);
maximum = sum(max_products) / 2;
pop = gen_pop_int(dim, n, 0, maximum, profits, blends, max_products);
disp(pop);
for i=1:nr
    parents = SUS(pop, 2);
    children = crossover_singlepoint(parents, pc);
    children = mutation_creep(children, pm, 0, maximum, margin, profits);
    pop = genitor_ordered(parents, children, k);
end
sortrows(pop, n+1);
best = pop(1, 1:n+1);
Profit = ['Maximum profit: ',num2str(best(n+1))];
Quantities = ['Quantities: Brazilian:',num2str(0.5*best(1)+0.25*best(2)),...
    ' | Columbian:',num2str(0.5*best(1)+0.75*best(2))];
Final = ['Final solution: Super:',num2str(best(1)),' | Lux:',num2str(best(2))];
disp(Profit);
disp(Quantities);
disp(Final);
end