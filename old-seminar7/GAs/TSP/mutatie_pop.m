function [MO]=mutatie_pop(O,pm,c)
% mutatia efectuata pe populatia de copii O, cu probabilitatea pm
MO=O;
[dim,n]=size(O);
n=n-1;
for i=1:dim
       r=unifrnd(0,1);
        if r<=pm
            % mutatia prin inserare
           %disp('Mutatie efectuata in cromozomul'); disp(O(i,1:n));
           %MO(i,1:n)=mutatie_inserare(O(i,1:n),n);
           MO(i,1:n)=mutatie_inversiune(O(i,1:n),n);
            %disp('Cromozom rezultat');disp(MO(i,1:n));
            % evaluarea noului individ, daca s-a realizat o modificare
            MO(i,n+1)=fitness_TSP(MO(i,1:n),c);
%              disp(['Calitatea individului original:' num2str(O(i,n+1))]);
%             disp(['Calitatea individului mutat:' num2str(MO(i,n+1))]);
%             str=sprintf('\n');
%             disp(str);
        end;
end