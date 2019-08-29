function [sol,val] = GA_Ackley(n,dim,a,b,MAX,alpha,pc,sigma,pm)

%% Exemple de apel
% [sol,val] = GA_Ackley(2,100,[-20,-20],[20,20],150,0.6,0.8,[0.15,0.15],0.1);
% [sol,val] =  GA_Ackley(5,100,[-20,-20,-20,-20,-20],[20,20,20,20,20],200,0.6,0.8,[0.15,0.15,0.15,0.15,0.15],0.1);
% [sol,val] =  GA_Ackley(5,1000,[-20,-20,-20,-20,-20],[20,20,20,20,20],200,0.6,0.8,[0.15,0.15,0.15,0.15,0.15],0.1);

%exemplu_Ackley.m
%% Implementare

%genereaza populatia initiala si calculeaza fitness-ul maxim
Pop=gen_Ackley(n,dim,a,b);
fitmax=max(Pop(:,n+1));
valori_max=[fitmax];
it=1;
OK=1;
% OK=1 daca exista macar 2 valori ale functiei fitness in populatie
while it<=MAX && fitmax<1 &&OK
    % selectie parinti
     Parinti=SUS_Ackley(Pop);
     % recombinare
      O=crossover_Ackley(n,dim,Parinti,alpha,pc);
      %mutatie
       MO = mutatie_Ackley(n,dim,a,b,O,sigma,pm);
       %selectia generatiei urmatoare
       GenUrm = elitism_Ackley(Pop,MO);
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
 %% Afisare rezultate

 dd=length(valori_max);
 valori_min=valori_max;
 for i=1:dd
     valori_min(i)=(1-valori_max(i))/valori_max(i);
 end;
 figure
 x=100:dd;
 y=valori_min(x);
 plot(x,y,'--rs','LineWidth',2,...
                'MarkerEdgeColor','k',...
                'MarkerFaceColor','g',...
                'MarkerSize',10);
 title('Evolutia celui mai bun individ');
 disp('Cel mai bun individ:');
 [val,poz]=max(Pop(:,n+1)); sol=Pop(poz,1:n);
 v=(1-val)/val;
 disp(sol);
 disp(['Valoarea calculata:' num2str(v)]);
 plot_Ackley_2D(a,b,n,sol,val);
end

