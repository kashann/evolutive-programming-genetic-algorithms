c=load('distante3.txt');
[n,~]=size(c);
Parinti = gen_pop_TSP(c,450,n);
Copii=crossover_TSP(Parinti,0.7,c);
x1=max(Parinti(:,n+1));disp(['Individul cel mai bun in populatia de parinti are costul ' num2str(1/x1)]);
x2=max(Copii(:,n+1));disp(['Individul cel mai bun in populatia de copii are costul ' num2str(1/x2)]);