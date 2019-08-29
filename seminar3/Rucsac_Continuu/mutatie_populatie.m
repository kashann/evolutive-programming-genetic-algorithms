function [MO] = mutatie_populatie(O,dim,n,c,cmax,v,sigma,pm)
MO=O;
for i=1:dim
    mutat=0;
    for j=1:n
        r=unifrnd(0,1);
        if r<=pm
            MO(i,j)=mutatie_fluaj(MO(i,j),sigma);
            mutat=1;
        end;
    end;
    if mutat
        disp('Mutation in:');
        disp(O(i,:));
        if este_fezabil(MO(i,1:n),c,n,cmax)
            MO(i,n+1)=f_obiectiv(v,MO(i,1:n),n);
            disp('The result is admissible');
            disp(MO(i,:));
        else
            disp('The result is not feasible');
        end;
    end;
end;
end

