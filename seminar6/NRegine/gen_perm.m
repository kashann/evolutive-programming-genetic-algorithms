function [y]=gen_perm(m)
%y este o permutare de dimensiune m
y=zeros(1,m);
for i=1:m
    gata=0;
    %genereaza alela i (valoarea componentei i) din permutare
    while(~gata)
        % este generat aleator x din {1,2,...m} astfel incat x nu se regaseste
        % deja in y
        x=unidrnd(m);
        if(~ismember(x,y))
            y(i)=x;
            gata=1;
        end;
    end;
end;
end
