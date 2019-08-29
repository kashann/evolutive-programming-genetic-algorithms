function [MO] = mutatie_copii(O,pm,cost,valoare,cmax)
% mutatia efectuata pe populatia de copii O, cu probabilitatea pm
MO=O;
[dim,n]=size(O);
n=n-1;
for i=1:dim
    modif=0;
    for j=1:n
        r=unifrnd(0,1);
        if r<=pm
            % mutatia bit flip
           MO(i,j)=bit_flip(O(i,j));
           modif=1;
        end;
    end;      
    if modif
         [OK,costt]=verifica_fez(MO(i,1:n),cmax,cost,n);
         if OK
         % verifica daca individul rezultat este solutie fezabila;
             % evaluarea noului individ, daca s-a realizat o modificare
                MO(i,n+1)=f_obiectiv(valoare,MO(i,1:n));
                %disp(['Costul noului individ:' num2str(costt)]);
%                 disp(['Calitatea individului original:' num2str(O(i,n+1))]);
%                 disp(['Calitatea individului mutat:' num2str(MO(i,n+1))]);
%                 str=sprintf('\n');
%                 disp(str);
         else
         % altfel nu considera mutatia    
             MO(i,:)=O(i,:);
         end;
    end;
end;
end

%% EXEMPLU DE APEL - PE POPULATIA DE COPII GENERATA ALEATOR
%cost=load('cost.txt');
%valoare=load('valoare.txt');
% Copii=gen_pop_vbiti(50,cost,valoare,4);
% CopiiM=mutatie_copii(Copii,0.1,cost,valoare,4);
%x1=max(Copii(:,10));disp(x1);
%x2=max(CopiiM(:,10));disp(x2);


