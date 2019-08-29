function [Pop]=gen_pop(dim,cost,valoare,n,cmax)

% ACEASTA FUNCTIE ESTE FOLOSITA IN GA PENTRU GENERAREA POPULATIEI INITIALE

%generarea populatiei initiale de dimensiune dim in problema continua a rucsacului
%cost - vectorul costurilor
%valoare- vectorul valoare
% n este numarul de valori al reprezentarii - numere in [0,1], corespunzator fractiunii alese din obiect 
% suma costurilor fractiunilor din obiectele alese nu trebuie sa depaseasca cmax

%Initializarea cu matricea nula
Pop=zeros(dim,n+1);
i=1;
while i<=dim
    %fiecare linie din Pop are primele n componente vectorul de numere reale pozitive subunitare si ultimul element este calitatea individului 
    % un individ trebuie sa fie valid, altfel el nu este candidat la solutie
    sir=unifrnd(0,1,1,n);
    val=f_obiectiv(valoare,sir,n);
    
    %verificarea fezabilitatii
    if(este_fezabil(sir,cost,n,cmax))
        Pop(i,1:n)=sir;
        Pop(i,n+1)=val;
        i=i+1;
    end;
end;
end
