function [P] = gen_pop(dim,n)
P=zeros(dim,n+1);
for i=1:dim
    p=randperm(n);
    P(i,1:n)=p;
    P(i,1+n)=fitness(p,n);
end;
end

