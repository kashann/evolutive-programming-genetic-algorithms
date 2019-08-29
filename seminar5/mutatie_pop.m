function [CopiiM] = mutatie_pop(Copii,dim,nrrep,pm)
CopiiM=Copii;
for i=1:dim
    r=unifrnd(0,1);
    if r<=pm
        copil=Copii(i,1:nrrep);
        copilm=mutatie_inv(copil,nrrep);
        CopiiM(i,1:nrrep)=copilm;
        CopiiM(i,nrrep+1)=fitness(copilm,nrrep);
    end;
end;
end

