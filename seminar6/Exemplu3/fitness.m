function [val] = fitness(candidat_solutie,nrrep)
val=0;
for i=1:nrrep-1
    for j=i+1:nrrep
        if (candidat_solutie(i)<i)&&(candidat_solutie(j)>j)
            val=val+1;
        end;
    end;
end;
end

