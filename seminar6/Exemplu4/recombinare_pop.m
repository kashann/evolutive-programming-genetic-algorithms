function [Copii] = recombinare_pop(Parinti,dim,n,pc,a,b)
Copii=Parinti;
for i=1:2:dim-1
    r=unifrnd(0,1);
    if r<=pc
        p1=Parinti(i,1:n);
        p2=Parinti(i+1,1:n);
        [c1,c2]=recombinare_unif(p1,p2,n);
        if este_fezabil(c1)
            Copii(i,1:n)=c1; Copii(i,n+1)=fitness(c1,n,a,b);
        end;
        if este_fezabil(c2)
            Copii(i+1,1:n)=c2; Copii(i+1,n+1)=fitness(c2,n,a,b);
        end;
    end;
end;
end

