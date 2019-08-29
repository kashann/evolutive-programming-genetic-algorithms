function [O] = crossover_Ackley(n,dim,Pop,alpha,pc)
%% Functia Ackley - aplicarea operatorului de crossover
% fiecare componenta a cromozomului este un numar real in [a(i),b(i)]
% crossover - recombinare aritmetica totala cu ponderea alpha
%% Implementare
O=Pop;
for i=1:2:dim
    % incrucisare intre 2 parinti consecutivi 
    x=Pop(i,1:n); 
    y=Pop(i+1,1:n);
    r=unifrnd(0,1);
    if r<pc
        x1=alpha*x+(1-alpha)*y;
        y1=alpha*y+(1-alpha)*x;
        O(i,1:n)=x1; O(i,n+1)=1/(1+Ackley(x1,n));
        O(i+1,1:n)=y1; O(i+1,n+1)=1/(1+Ackley(y1,n));
        % else - parintii devin proprii copii
    end;
end;
end

