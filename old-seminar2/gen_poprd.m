function [Pop] = gen_poprd(numec,numeb,cmax,dim)
c=load(numec);
b=load(numeb);
n=length(c);
Pop=zeros(dim,n+1);
for i=1:dim
    Pop(i,1:n)=gen_solf(c,cmax);
    Pop(i,n+1)=fitness_rd(b,Pop(i,1:n));
end;
end

