function [sol,val] = GA_TSP(numed,dim,MAX,pc,pm,eps,NrG)
%% Parametrii functiei
%
%% Exemple de apel
%[sol,val] = GA_TSP('distante3.txt',200,250,0.8,0.1,1e-4,100);
%% Implementare

%genereaza populatia initiala si calculeaza fitness-ul maxim
c=load(numed);
[n,~]=size(c);
Pop=gen_pop_TSP(c,dim,n);
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
      O=crossover_TSP(Parinti,pc,c);
      %mutatie
       MO = mutatie_pop(O,pm,c);
       %selectia generatiei urmatoare
       GenUrm = elitism(Pop,MO);
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
 y=1./valori_max(x);
 plot(x,y,'--rs','LineWidth',2,...
                'MarkerEdgeColor','k',...
                'MarkerFaceColor','g',...
                'MarkerSize',10);
 title('Evolutia celui mai bun individ');
 disp('Cel mai bun individ:');
 [val,poz]=max(Pop(:,n+1)); sol=Pop(poz,1:n);
 val=1/val;
 disp(sol);
 disp(['Costul:' num2str(val)]);
end

