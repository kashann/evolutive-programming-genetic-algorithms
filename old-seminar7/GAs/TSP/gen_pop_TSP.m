function [Pop] = gen_pop_TSP(c,dim,n)
Pop=zeros(dim,n+1);
for i=1:dim
    Pop(i,1:n)=gen_perm(n);
    Pop(i,n+1)=fitness_TSP(Pop(i,1:n),c);
end;
end

