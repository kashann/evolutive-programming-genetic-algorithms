cost=load('cost.txt');
val=load('valoare.txt');
n=length(cost);
dim=20;
cmax=10;
Popini=gen_pop(dim,cost,val,n,cmax);
pm=0.1;
sigma=0.3;
% aplicam mutatia pe populatia nou generata, considerata de copii
PopM= mutatie_pop(Popini,dim,n,cost,val,cmax,pm,sigma);
