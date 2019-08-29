function [sol,val] = GA_Regine(n,dim,MAX,pc,pm,ni,eps)
%% Parametrii functiei
%
%% Exemple de apel
% [sol,val] = GA_Regine(10,200,150,0.8,0.1,20);
% [sol,val] = GA_Regine(16,200,250,0.8,0.1,20);
% [sol,val] = GA_Regine(16,400,250,0.8,0.1,40);
%% Implementare

%genereaza populatia initiala si calculeaza fitness-ul maxim
Pop=gen_pop(n,dim);
fitmax=max(Pop(:,n+1));
valori_max=[fitmax];
it=1;
OK=1;
% OK=1 daca exista macar 2 valori ale functiei fitness in populatie
while it<=MAX && fitmax<n*(n-1)/2 &&OK
    % selectie parinti
     Parinti=ruleta(Pop);
     % recombinare
      O=crossover_Regine(Parinti,pc);
      %mutatie
       MO = mutatie_pop(O,pm);
       %selectia generatiei urmatoare
       GenUrm = Genitor(Pop,MO,ni);
       % numararea generatiilor cosecutive cu cel mai bun individ
       % aproximativ la fel de bun
       fitmax1=max(GenUrm(:,n+1));
       fitmin=min(GenUrm(:,n+1));
       OK= fitmin~=fitmax1;
       fitmax=fitmax1;
       valori_max= [valori_max fitmax];
       it=it+1;
       Pop=GenUrm;
end;
disp(OK);
 %% Afisare rezultate
 figure
 x=1:length(valori_max);
 y=n*(n-1)/2-valori_max(x);
 plot(x,y,'--rs','LineWidth',2,...
                'MarkerEdgeColor','k',...
                'MarkerFaceColor','g',...
                'MarkerSize',10);
 title('Evolutia celui mai bun individ');
 disp('Cel mai bun individ:');
 [val,poz]=max(Pop(:,n+1)); sol=Pop(poz,1:n);
 val=n*(n-1)/2-val;
 disp(sol);
 disp(['Numarul de perechi de regine care se ataca:' num2str(val)]);
end

