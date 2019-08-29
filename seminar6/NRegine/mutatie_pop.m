function [OM] = mutatie_pop(O,dim,n,pm)
% Implementarea operatiei de mutatie la nivelul populatiei de copii
% Reprezentarea - permutari
% Copiii - O, cu dim indivizi; n -dimensiunea problemei(dimensiunea permutarii)
% pm - probabilitatea de mutatie - in general foarte mica

% intial, copii mutati sunt identici cu O
OM=O;
%Este parcursa O individ cu individ
for i=1:dim
    % verifica daca permutarea i sufera mutatie
    r=unifrnd(0,1);
    if r<=pm
        % efectueaza mutatiei prin inversiune - specifica problemelor de
        % dependenta de adiacenta, cum este TSP
        disp(['Este selectata permutarea ' num2str(i)]);disp(OM(i,1:n));
        disp('cu valoarea');disp(OM(i,n+1));
        OM(i,1:n)=mutatie_inter(OM(i,1:n),n);
        disp('Rezulta permutarea');disp(OM(i,1:n));
        OM(i,n+1)=f_obiectiv(OM(i,1:n),n);
        disp('Valoarea nou');disp(OM(i,n+1));
    end;
end;
end

