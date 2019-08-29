function [OM] = mutatie_pop(O,dim,n,C,V,cmax,pm)
% Implementarea operatiei de mutatie la nivelul populatiei de copii
% Reprezentarea - vectori de biti
% Copiii - O, cu dim indivizi; n -dimensiunea problemei(numarul de obiecte)
% C,V - vectorul costurilor si vectorul valorilor
% cmax - costul maxim admisibil
% pm - probabilitatea de mutatie - in general foarte mica

% intial, copii mutati sunt identici cu O
OM=O;
%Este parcursa O individ cu individ si fiecare individ este parcurs gena cu
%gena
for i=1:dim
    p=OM(i,1:n);
    for j=1:n
        % verifica daca p, individul i, sufera mutatie in gena j
        r=unifrnd(0,1);
        if r<=pm
            % efectueaza mutatiei 
            disp(['Este selectat individul ' num2str(i) ' gena ' num2str(j)]);disp(OM(i,j));
            disp('cu valoarea');disp(OM(i,n+1));
            p(j)=mutatie_bin(p(j));
            % modificarea este mentinuta doar daca rezulta un individ
            % fezabil
            if este_fezabil(p,C,n,cmax)
                OM(i,1:n)=p;
                disp('Rezulta individul');disp(OM(i,1:n));
                OM(i,n+1)=f_obiectiv(V,p,n);
                disp('Valoarea noua');disp(OM(i,n+1));
                p=OM(i,1:n);
            end;
        end;
    end;
end;
end

