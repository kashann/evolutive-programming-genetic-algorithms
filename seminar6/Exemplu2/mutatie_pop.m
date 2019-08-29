function [MO] = mutatie_pop(O,dim,n,pm)
MO=O;
for i=1:dim
    r=unifrnd(0,1);
    if r<=pm
        x=O(i,1:n);
        y=mutatie_inversiune(x,n);
        MO(i,1:n)=y;
        MO(i,n+1)=fitness(y,n);
    end;
end;
end

