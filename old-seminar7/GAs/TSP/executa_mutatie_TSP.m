c=load('distante3.txt');
[n,~]=size(c);
Copii = gen_pop_TSP(c,450,n);
CopiiM=mutatie_pop(Copii,0.3,c);
x1=max(Copii(:,n+1));disp(['Individul cel mai bun in populatia de copii are costul ' num2str(1/x1)]);
x2=max(CopiiM(:,n+1));disp(['Individul cel mai bun in populatia de copii mutati are costul ' num2str(1/x2)]);