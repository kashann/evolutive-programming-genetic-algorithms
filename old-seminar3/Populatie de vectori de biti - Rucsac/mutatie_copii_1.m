function [MO] = mutatie_copii_1(O,cost,valoare,cmax,pm)
[dim,m]=size(O);
n=m-1;
MO=O;
for i=1:dim
    mutat=0;
    for j=1:n
        r=unifrnd(0,1);
        if r<=pm
            MO(i,j)=bit_flip_1(O(i,j));
            mutat=1;
        end;
    end;
    if mutat
        [OK,~]=verifica_fez(MO(i,1:n),cmax,cost,n);
        if OK
            MO(i,n+1)=f_obiectiv(valoare,MO(i,1:n));
        else
            MO(i,:)=O(i,:);
        end;
    end;
end

