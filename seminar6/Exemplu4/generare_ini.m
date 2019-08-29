function [P] = generare_ini(dim,n,a,b)
P=zeros(dim,n+1);
NR=2^n-1;
i=1;
while i<=dim
    ns=unidrnd(NR);
    s=bitget(ns,1:n);
    if este_fezabil(s)
        P(i,1:n)=s;
        P(i,n+1)=fitness(s,n,a,b);
        i=i+1;
    end;
end;
end

