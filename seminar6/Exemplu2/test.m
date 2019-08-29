n=20;
dim=300;
Copii=gen_pop(dim,n);
pm=0.2;
CopiiM=mutatie_pop(Copii,dim,n,pm);
disp(max(Copii(:,n+1)));
disp(max(CopiiM(:,n+1)));
figure
stem(Copii(:,end));
title('Calitatea populatiei de copii');
figure
stem(CopiiM(:,end));
title('Calitatea populatiei de copii dupa mutatie');