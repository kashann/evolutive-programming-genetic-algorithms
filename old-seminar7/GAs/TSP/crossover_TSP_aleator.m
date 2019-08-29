function [popN]=crossover_TSP_aleator(pop,pc,c)
[dim,n]=size(pop);
popN=zeros(dim,n);
n=n-1;
for k=1:2:dim
    poz=zeros(1,2);
    while poz(1)==poz(2)
        poz=unidrnd(dim,1,2);
    end;
    x1=pop(poz(1),1:n); f1=pop(poz(1),n+1);
    y1=pop(poz(2),1:n);f2=pop(poz(2),n+1);
    r=unifrnd(0,1);
    if(r<=pc)
        [x2,y2]=CX(x1,y1,n);
        popN(k,1:n)=x2;
        popN(k,n+1)=fitness_TSP(x2,c);
        popN(k+1,1:n)=y2;
       popN(k+1,n+1)=fitness_TSP(y2,c);
     else
         popN(k,1:n)=x1;
         popN(k,n+1)=f1;
        popN(k+1,1:n)=y1;
       popN(k+1,n+1)=f2;  
    end;
end;
end
