function [O] =crossover_pop(P,dim,n,pc,cost)
% indivizii parinti sunt aranjati in P aleator
% recombinarea este realizata pentru perechi de parinti vecini
O=P;
c=zeros(2,n);
for i=1:2:dim-1
    p1=P(i,1:n);
    p2=P(i+1,1:n);
    r=unifrnd(0,1);
    if r<=pc
        disp(['Crossover intre parintii ' num2str(i) ' ' num2str(i+1)]);
        disp(P(i,:));
        disp(P(i+1,:));
        [c(1,:),c(2,:)]=crossover_PMX(p1,p2,n); % - crossover PMX
        disp('Rezulta');
        for j=1:2
            disp(['Copilul ' num2str(j)]);
            O(i+j-1,1:n)=c(j,:);
            O(i+j-1,n+1)=fitness_TSP(c(j,:),cost,n);
            disp(O(i+j-1,:));
        end;
    else
        disp('Recombinare asexuata');
    end;
end;       
end

