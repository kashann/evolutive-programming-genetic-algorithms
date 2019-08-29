function [y] = mutatie_interschimbare(x,n)
poz=unidrnd(n,1,2);
while poz(1)==poz(2)
    poz=unidrnd(n,1,2);
end;
y=x;
y(poz(1))=x(poz(2));
y(poz(2))=x(poz(1));
end

