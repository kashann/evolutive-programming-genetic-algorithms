function [popN]=crossover_Knapsack_aleator(pop,pc,cost,valoare,cmax)
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
       rez=cross_bit(x1,y1,n);
        for j=1:2
            [OK,~]=verifica_fez(rez(j,:),cmax,cost,n);
            %daca copilul j este fezabil il salvam
            if OK
                popN(k+j-1,1:n)=rez(j,:);
                popN(k+j-1,n+1)=f_obiectiv(valoare,rez(j,:));
            %altfel il inlocuim cu parintele corespunzator lui
            else
                popN(k+j-1,:)=pop(poz(j),:);
            end;
        end;
    else
         popN(k,1:n)=x1; popN(k,1+n)=f1;
         popN(k+1,1:n)=y1; popN(k+1,1+n)=f2;
   end;
end;
end
