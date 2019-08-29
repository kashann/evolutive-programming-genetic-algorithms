cost=load('cost.txt');
val=load('valoare.txt');
n=length(cost);
dim=20;
cmax=40;
O=gen_pop(dim,cost,val,n,cmax);
pm=0.01;
sigma=0.05;
MO=mutatie_populatie(O,dim,n,cost,cmax,val,sigma,pm);

%verificam costul - calculam costul maxim al unui individ si il afisam

%c=zeros(1,dim);
%for i=1:dim
%    [~,c(i)]=este_fezabil(Popini(i,1:n),cost,n,cmax);
%end;
%disp(max(c));

%HOMEWORK:IMPLEMENT THE MUTATION SCHEMES IN CASE OF CONSTRAINT/UNCONSTRAINT
%PROBLEMS AND VARIOUS GENOTYPE REPRESENTATIONS