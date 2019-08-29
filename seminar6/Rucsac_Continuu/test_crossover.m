cost=load('cost.txt');
val=load('valoare.txt');
n=length(cost);
dim=100;
cmax=30;
Parinti=gen_pop(dim,cost,val,n,cmax);
pc=0.8;
alpha=0.5;
% aplicam crossover-ul pe populatia nou generata, considerata de parinti
Copii= crossover_pop(Parinti,dim,n,pc,cost,val,cmax,alpha);
figure
stem(Parinti(:,end));
figure
stem(Copii(:,end));
disp(['Valoarea celui mai bun parinte:' num2str(max(Parinti(:,end)))]);
disp(['Valoarea celui mai bun copil:' num2str(max(Copii(:,end)))]);
