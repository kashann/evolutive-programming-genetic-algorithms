function [popN]=crossover_Regine(pop,pc)
popN=pop;
[dim,n]=size(pop);
n=n-1;
for k=1:2:dim
    x1=pop(k,1:n);
    y1=pop(k+1,1:n);
    r=unifrnd(0,1);
    if(r<=pc)
        [x2,y2]=OCX(x1,y1,n);
        popN(k,1:n)=x2;
        popN(k,n+1)=fitness_r(x2);
        popN(k+1,1:n)=y2;
       popN(k+1,n+1)=fitness_r(y2);
   end;
end;
end
