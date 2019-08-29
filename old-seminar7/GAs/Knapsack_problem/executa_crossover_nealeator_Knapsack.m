cost=load('cost.txt');
valoare=load('valoare.txt');
n=length(cost);
dim=100;
pc=0.7;
cmax=44;
Parinti = gen_pop_vbiti(dim,cost,valoare,cmax);
Copii=crossover_Knapsack(Parinti,pc,cost,valoare,cmax);
x1=max(Parinti(:,n+1));disp(['Valoarea cea mai mare in populatia de parinti:' num2str(x1)]);
x2=max(Copii(:,n+1));disp(['Valoarea cea mai mare in populatia de copii :' num2str(x2)]);