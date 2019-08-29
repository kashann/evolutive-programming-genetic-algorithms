n=14;
dim=100;
Populatie=gen_pop(dim,n);
%presupunem Populatie multisetul de copii
%construim multisetul progeniturilor mutate
pc=0.8;
Copii=crossover_pop(Populatie,dim,n,pc);
figure
stem(Populatie(:,end));
figure
stem(Copii(:,end));
disp(['Valoarea celui mai bun parinte:' num2str(max(Populatie(:,end)))]);
disp(['Valoarea celui mai bun copil:' num2str(max(Copii(:,end)))]);