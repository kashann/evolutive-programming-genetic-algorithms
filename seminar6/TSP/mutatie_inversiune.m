function [p] = mutatie_inversiune(s,n)
%implementarea mutatiei prin inversiune

%generarea a doua pozitii aleatoare i<j
i=1;j=0;
while (i>j)
    i=unidrnd(n-1);
    j=1+unidrnd(n-1);
end;
p=s;
p(i:j)=s(j:-1:i);

end

