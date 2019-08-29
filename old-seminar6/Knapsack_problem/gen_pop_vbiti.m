function [Pop]=gen_pop_vbiti(dim,cost,valoare,cmax)
%generarea populatiei initiale de dimensiune dim in problema rucsacului

%% Exemplu: 
%cost=load('cost.txt');
%valoare=load('valoare.txt');
%Populatie=gen_pop_vbiti(10,cost,valoare,44);

%% Implementare
% n este numarul de biti al reprezentarii
n=length(cost);
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
    sir=gen_sir_biti(x,n);
    val=f_obiectiv(valoare,sir); 
    %verificarea fezabilitatii
    [OK,~]=verifica_fez(sir,cmax,cost,n);
    if OK
        Pop(i,1:n)=sir;
        %disp(['individul ' num2str(i)]); disp(Pop(i,1:n));
        Pop(i,n+1)=val;
        %disp(['Calitatea lui:' num2str(Pop(i,n+1))]);
        %disp(['Costul lui:' num2str(costt)]);
        i=i+1;
        % afisam o linie libera
        %str=sprintf('\n');
        %disp(str);
    end;
end;
end
