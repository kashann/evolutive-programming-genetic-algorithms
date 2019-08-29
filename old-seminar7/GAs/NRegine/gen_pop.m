function [Pop] = gen_pop(n,dim)
Pop=zeros(dim,n+1);
for i=1:dim
    Pop(i,1:n)=gen_perm(n);
    Pop(i,n+1)=fitness_r(Pop(i,1:n));
end;
end

