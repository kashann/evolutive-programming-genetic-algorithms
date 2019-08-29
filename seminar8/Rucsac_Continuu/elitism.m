function [NextG] = elitism(PopC, MO, dim, n)
NextG=MO; %Mutated offspring
valo=max(MO(:,n+1));
[valc,poz]=max(PopC(:,n+1));
if valc>valo
    p=unidrnd(dim);
    NextG(p,:)=PopC(poz,:);
end;
end