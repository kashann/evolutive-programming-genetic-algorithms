function [O] =crossover_pop(P,dim,n,pc,cost,val,cmax,alpha)
% indivizii parinti sunt aranjati in P aleator
% recombinarea este realizata pentru perechi de parinti vecini
O=zeros(dim,n+1);
c=zeros(2,n);
for i=1:2:dim-1
    p1=P(i,1:n);
    p2=P(i+1,1:n);
    r=unifrnd(0,1);
    if r<=pc
        disp(['Crossover intre parintii ' num2str(i) ' ' num2str(i+1)]);
        disp(P(i,:));
        disp(P(i+1,:));
        [c(1,:),c(2,:)]=crossover_unif(p1,p2,n); % - crossover discret
        disp('Rezulta');
        for j=1:2
            if este_fezabil(c(j,:),cost,n,cmax)
                disp(['Copilul ' num2str(j) ' fezabil:']);
                O(i+j-1,1:n)=c(j,:);
                O(i+j-1,n+1)=f_obiectiv(val,c(j,:),n);
                disp(O(i+j-1,:));
            else
                disp(['Copilul ' num2str(j) ' nu este fezabil. Este inlocuit cu parintele sau']);
                O(i+j-1,:)=P(i+j-1,:);
            end;
        end;
    else
        disp('Recombinare asexuata');
        O(i,:)=P(i,:);
        O(i+1,:)=P(i+1,:);
    end;
end;       
end

