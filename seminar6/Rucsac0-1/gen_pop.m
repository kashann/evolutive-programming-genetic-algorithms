function [Pop]=gen_pop(dim,cost,valoare,n,cmax)

% ACEASTA FUNCTIE ESTE FOLOSITA IN GA PENTRU GENERAREA POPULATIEI INITIALE

%generarea populatiei initiale de dimensiune dim in problema rucsacului
%cost - vectorul costurilor
%valoare- vectorul valoare
% n este numarul de biti al reprezentarii
% suma costurilor obiectelor alese nu trebuie sa depaseasca cmax
% presupunem cmax>=cel mai mic cost al unui obiect

% numarul natural cu valoarea cea mai mare care se poate reprezenta pe n biti este max=2^n-1;
% pentru a genera un vector de biti candidat la solutie e suficient sa generam un numar intre 1
% si max si sa calculam reprezentarea binara dar astfel incat costul
% alegerii sa nu depaeasca cmax

max=2^n-1;
%Initializarea cu matricea nula
Pop=zeros(dim,n+1);
i=1;
while i<=dim
    %fiecare linie din Pop are primele n componente vectorul de biti si ultimul element este calitatea individului 
    % un individ trebuie sa fie valid, altfel el nu este candidat la
    % solutie
    x=unidrnd(max);
    sir=bitget(x,n:-1:1);
    val=f_obiectiv(valoare,sir,n);
    
    %verificarea fezabilitatii
    if(este_fezabil(sir,cost,n,cmax))
        Pop(i,1:n)=sir;
        Pop(i,n+1)=val;
        i=i+1;
    end;
end;
end
