cost=load('cost.txt');
val=load('valoare.txt');
n=length(cost);
dim=40;
cmax=30;
Popini=gen_pop(dim,cost,val,n,cmax);
pc=0.7;
alpha=0.3;
Copii=crossover_pop(Popini,dim,n,pc,val,cost,cmax,alpha);
figure
stem(Popini(:,end));
figure
stem(Copii(:,end))