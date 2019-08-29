function [Pop] = gen_Ackley(n,dim,a,b)
%% Functia Ackley - generarea populatiei initiale
% generarea populatiei initiale pentru optimizarea - maximizareaz functiei 1/(1+Ackley) 
% Ackely este functie de n argumente numere reale
% fiecare componenta a cromozomului este un numar real in [a(i),b(i)]
%% Implementare
Pop=zeros(dim,n+1);
for i=1:dim
    %generarea individului i
    for j=1:n
        Pop(i,j)=unifrnd(a(j),b(j));
    end;
    Pop(i,n+1)=1/(1+Ackley(Pop(i,1:n),n));
end;
end

