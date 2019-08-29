function [y] = mutatie_inversiune(x,n)
poz=unidrnd(n,1,2);
while poz(1)>=poz(2)
    poz=unidrnd(n,1,2);
end;
y=x;
y(poz(1):poz(2))=x(poz(2):-1:poz(1));
end

