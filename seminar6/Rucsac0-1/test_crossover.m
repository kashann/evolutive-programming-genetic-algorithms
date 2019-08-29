cost=load('cost.txt');
val=load('valoare.txt');
n=length(cost);
dim=20;
cmax=30;
Parinti=gen_pop(dim,cost,val,n,cmax);
pc=0.8;
alpha=0.4;
% aplicam crossover-ul pe populatia nou generata, considerata de parinti
Copii= crossover_pop(Parinti,dim,n,pc,cost,val,cmax,alpha);
disp(['Valoarea celui mai bun parinte:' num2str(max(Parinti(:,end)))]);
disp(['Valoarea celui mai bun copil:' num2str(max(Copii(:,end)))]);
