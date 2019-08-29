function [sol,vals] = GA_knapsack(namec,namev,cmax,dim,pc,alpha,pm,sigma,MAX,NRG,eps)
%[sol,vals] =GA_knapsack('cost.txt','valoare.txt',40,100,0.8,0.6,0.1,0.1,200,40,1e-4);
t=1;
nrg=1; %nr of generations
OK=1;
cost=load(namec);
val=load(namev);
n=length(cost);
PopC=gen_pop(dim,cost,val,n,cmax);
valb=max(PopC(:,n+1));
bvs=[valb];
while t<=MAX && nrg<=NRG && OK
    PPopC=selectie_SUS(PopC,dim,n);
    O=crossover_pop(PPopC,dim,n,pc,cost,val,cmax,alpha);
    MO=mutatie_pop(O,dim,n,cost,val,cmax,pm,sigma);
    NextG=elitism(PopC,MO,dim,n);
    t=t+1;
    valn=max(NextG(:,n+1));
    if valn-valb<eps
        nrg=nrg+1;
    else
        nrg=1;
    end;
    valmin=min(NextG(:,n+1));
    if valn==valmin
        OK=0;
    end;
    bvs=[bvs valn];
    PopC=NextG;
    valb=valn;
end;
[valb,poz]=max(PopC(:,n+1));
sol=PopC(poz,1:n);
disp('The computed solution: ');
disp(sol);
disp(['The fitness: ' num2str(vals)]);
it=length(bvs);
figure
x=1:it;
y=bvs(x);
plot(x,y);
end