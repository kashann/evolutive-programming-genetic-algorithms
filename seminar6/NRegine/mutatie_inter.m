function [p] = mutatie_inter(s,n)
%implementarea mutatiei prin inversiune

%generarea a doua pozitii aleatoare i<j
i=1;j=1;
while (i==j)
    i=unidrnd(n);
    j=unidrnd(n);
end;
p=s;
p(i)=s(j);
p(j)=s(i);

end

