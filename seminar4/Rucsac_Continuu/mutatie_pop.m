function [OM] = mutatie_pop(O,dim,n,C,V,cmax,pm,sigma)
% Implementarea operatiei de mutatie la nivelul populatiei de copii
% Reprezentarea - vectori cu numere reale
% Copiii - O, cu dim indivizi; n -dimensiunea problemei(numarul de obiecte)
% C,V - vectorul costurilor si vectorul valorilor
% cmax - costul maxim admisibil
% pm - probabilitatea de mutatie - in general foarte mica
% sigma - dispersia din mutatia neuniforma

% intial, copii mutati sunt identici cu O
OM=O;
%Este parcursa O individ cu individ si fiecare individ este parcurs gena cu
%gena
for i=1:dim
    p=OM(i,1:n);
    mutat=0;
    for j=1:n
        % verifica daca p, individul i, sufera mutatie in gena j
        r=unifrnd(0,1);
        if r<=pm
            % efectueaza mutatiei neuniforma - fluaj 
            disp(['Este selectat individul ' num2str(i) ' gena ' num2str(j)]);disp(OM(i,1:n));
            pp=p;
            % este pastrata starea curenta a individului i daca mutatia
            % nu se poate aplica se revine la aceasta
            p(j)=mutatie_fluaj(p(j),sigma);
            % modificarea este mentinuta doar daca rezulta un individ
            % fezabil
            if este_fezabil(p,C,n,cmax)
                OM(i,1:n)=p;
                mutat=1;
                disp('Rezulta individul');disp(OM(i,1:n));
            else
                p=pp;
                disp('Nu se poate aplica mutatia');
            end;
        end;
    end;
    if mutat
            disp('Valoarea initiala:');disp(O(i,n+1));
            OM(i,n+1)=f_obiectiv(V,p,n);
            disp('Valoarea noua finala:');disp(OM(i,n+1));
    end;
end;
end

