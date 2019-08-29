cost=load('cost.txt');
valoare=load('valoare.txt');
n=length(cost);
dim=100;
cmax=40;
Populatie=gen_pop_vbiti(dim,cost,valoare,cmax);
Parinti=SUS(Populatie);