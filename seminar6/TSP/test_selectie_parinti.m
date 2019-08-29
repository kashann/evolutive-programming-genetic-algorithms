cost=load('distante3.txt');
[n,~]=size(cost);
dim=100;
Populatie=gen_pop_TSP(cost,n,dim);
% aplicam selectia ruleta cu obtinerea populatiei de parinti corespunzatoare
% Populatie
Parinti_r= selectie_ruleta(Populatie,dim,n);
% aplicam selectia SUS cu obtinerea populatiei de parinti corespunzatoare
% Populatie

Parinti_SUS= selectie_SUS(Populatie,dim,n);
figure
stem(Populatie(:,end));
title('Fitness-ul populatiei curente'); 
figure
stem(Parinti_r(:,end));
title('Fitness-ul parintilor generati cu mecanismul ruleta (FPS-scalare)'); 
figure
stem(Parinti_SUS(:,end));
title('Fitness-ul parintilor generati cu mecanismul SUS (FPS-scalare)'); 
disp(min((Populatie(:,end))));
disp(min((Parinti_r(:,end))));
disp(min((Parinti_SUS(:,end))));
