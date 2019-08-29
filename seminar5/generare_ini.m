function [Pop_ini] = generare_ini(dim,nrrep)
Pop_ini=zeros(dim,nrrep+1);
for i=1:dim
    individ=randperm(nrrep);
    Pop_ini(i,1:nrrep)=individ;
    Pop_ini(i,nrrep+1)=fitness(individ,nrrep);
end;
end

