function [popN]=crossover_TSP(pop,pc,c)
popN=pop;
[dim,n]=size(pop);
n=n-1;
for k=1:2:dim
    x1=pop(k,1:n);
    y1=pop(k+1,1:n);
    r=unifrnd(0,1);
    if(r<=pc)
        [x2,y2]=CX(x1,y1,n);
        popN(k,1:n)=x2;
        popN(k,n+1)=fitness_TSP(x2,c);
        popN(k+1,1:n)=y2;
       popN(k+1,n+1)=fitness_TSP(y2,c);
   end;
end;
end
