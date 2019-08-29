nrrep=12;
dim=500;
Copii=generare_ini(dim,nrrep);
disp(max(Copii(:,nrrep+1)));
figure
stem(Copii(:,end));
title('Calitatea populatiei de copii');
pm=0.1;
CopiiM=mutatie_pop(Copii,dim,nrrep,pm);
disp(max(CopiiM(:,nrrep+1)));
figure
stem(CopiiM(:,end));
title('Calitatea populatiei de copii dupa mutatie');