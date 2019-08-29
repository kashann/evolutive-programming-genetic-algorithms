function [copilm] = mutatie_inv(copil,nrrep)
poz=unidrnd(nrrep,1,2);
while poz(1)>=poz(2)
    poz=unidrnd(nrrep,1,2);
end;
copilm=copil;
copilm(poz(1):poz(2))=copil(poz(2):-1:poz(1));
end

