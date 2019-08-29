function [sol,val] = GA_Knapsack(numec,numev,cmax,dim,MAX,pc,pm,ni,eps,NrG)
%% Parametrii functiei
% numec - numele fisierului cost
% numev - numele fisierului valoare

%% Exemple de apel
%[sol,val] = GA_Knapsack('cost.txt','valoare.txt',44,50,150,0.7,0.05,10,1e-5,20);
%[sol,val] = GA_Knapsack('cost.txt','valoare.txt',44,200,150,0.7,0.05,10,1e-5,20);
%% Implementare
cost=load(numec);
valoare=load(numev);
n=length(cost);

%genereaza populatia initiala si calculeaza fitness-ul maxim
Pop=gen_pop_vbiti(dim,cost,valoare,cmax);
fitmax=max(Pop(:,n+1));
valori_max=[fitmax];
it=1;
nrg=0;
OK=1;
% OK=1 daca exista macar 2 valori ale functiei fitness in populatie
while it<=MAX && nrg<=NrG &&OK
    % selectie parinti
     Parinti=SUS(Pop);
     % recombinare
      O=crossover_Knapsack(Parinti,pc,cost,valoare,cmax);
      %mutatie
       MO = mutatie_copii(O,pm,cost,valoare,cmax);
       %selectia generatiei urmatoare
       GenUrm = Genitor1(Pop,MO,ni);
       % numararea generatiilor cosecutive cu cel mai bun individ
       % aproximativ la fel de bun
       fitmax1=max(GenUrm(:,n+1));
       fitmin=min(GenUrm(:,n+1));
       OK= fitmin~=fitmax1;
       if abs(fitmax-fitmax1)<eps
           nrg=nrg+1;
       else
           nrg=0;
       end;
       fitmax=fitmax1;
       valori_max= [valori_max fitmax];
       it=it+1;
       Pop=GenUrm;
end;
disp(OK);
 %% Afisare rezultate
 figure
 x=1:length(valori_max);
 y=valori_max(x);
 plot(x,y,'--rs','LineWidth',2,...
                'MarkerEdgeColor','k',...
                'MarkerFaceColor','g',...
                'MarkerSize',10);
 title('Evolutia celui mai bun individ');
 disp('Cel mai bun individ:');
 [val,poz]=max(Pop(:,n+1)); sol=Pop(poz,1:n);
 disp(sol);
 disp(['Valoarea:' num2str(val)]);
end

