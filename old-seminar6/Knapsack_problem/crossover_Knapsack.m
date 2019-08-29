function [popN]=crossover_Knapsack(pop,pc,cost,valoare,cmax)
popN=pop;
[dim,n]=size(pop);
n=n-1;
for k=1:2:dim
    x1=pop(k,1:n);
    y1=pop(k+1,1:n); 
    r=unifrnd(0,1);
    if(r<=pc)
        rez=cross_bit(x1,y1,n);
        for j=1:2
            [OK,~]=verifica_fez(rez(j,:),cmax,cost,n);
            %daca copilul j este fezabil il salvam
            if OK
                popN(k+j-1,1:n)=rez(j,:);
                popN(k+j-1,n+1)=f_obiectiv(valoare,rez(j,:));
            %altfel il inlocuim cu parintele corespunzatorlui
            else
                popN(k+j-1,:)=pop(k+j-1,:);
            end;
        end;
   end;
end;
end
