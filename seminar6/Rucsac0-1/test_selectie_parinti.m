cost=load('cost.txt');
val=load('valoare.txt');
n=length(cost);
dim=100;
cmax=30;
Populatie=gen_pop(dim,cost,val,n,cmax);
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
title('Fitness-ul parintilor generati cu mecanismul ruleta (FPS)'); 
figure
stem(Parinti_SUS(:,end));
title('Fitness-ul parintilor generati cu mecanismul SUS (FPS)'); 
