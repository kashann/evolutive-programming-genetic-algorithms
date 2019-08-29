function [popN]=crossover_Regine_aleator(pop,pc)
[dim,n]=size(pop);
popN=zeros(dim,n);
n=n-1;
for k=1:2:dim
    poz=zeros(1,2);
    while poz(1)==poz(2)
        poz=unidrnd(dim,1,2);
    end;
    x1=pop(poz(1),1:n); f1=pop(poz(1),1+n);
    y1=pop(poz(2),1:n);f2=pop(poz(2),1+n);
    r=unifrnd(0,1);
    if(r<=pc)
        [x2,y2]=OCX(x1,y1,n);
        popN(k,1:n)=x2;
        popN(k,n+1)=fitness_r(x2);
        popN(k+1,1:n)=y2;
       popN(k+1,n+1)=fitness_r(y2);
    else
         popN(k,1:n)=x1; popN(k,1+n)=f1;
         popN(k+1,1:n)=y1; popN(k+1,1+n)=f2;
   end;
end;
end
