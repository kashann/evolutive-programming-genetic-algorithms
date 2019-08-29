function [MO] = mutatie_Ackley(n,dim,a,b,O,sigma,pm)
%% Functia Ackley - aplicarea operatorului de mutatie
% fiecare componenta a cromozomului este un numar real in [a(i),b(i)]
% mutatia - neuniforma, pe fiecare componenta dimensiunea fluajului (a
% pasului) este sigma(i)
%% Implementare
MO=O;
for i=1:dim
    % parcurgerea individ cu individ 
    x=MO(i,1:n); modif=0;
    for j=1:n
        % parcurgerea gena cu gena
        r=unifrnd(0,1);
        if r<pm
            x(j)=fluaj(a(j),b(j),sigma(j),x(j));
            modif=1;
        end;
    end;
    if modif
        MO(i,1:n)=x;
        MO(i,n+1)=1/(1+Ackley(x,n));
    end;
end;
end

function y=fluaj(a,b,s,x)
val=normrnd(0,s);
y=x+val;
if y<a
    y=a;
else if y>b
        y=b;
    end;
end;
end

