function [ y] =Ackley(x,n)
% functia de minimizat
sp=0;
sc=0;
for i=1:n
    sp=sp+x(i)^2;
    sc=sc+cos(2*pi*x(i));
end;
y=-20*exp(-0.2*sqrt(sp/n))-exp(sc/n)+20+exp(1);
end

