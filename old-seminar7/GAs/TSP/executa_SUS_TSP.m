c=load('distante3.txt');
[n,~]=size(c);
Populatie = gen_pop_TSP(c,450,n);
Parinti=SUS(Populatie);
hist(Populatie(1:450,18));figure ;figure(gcf);
hist(Parinti(1:450,18));figure(gcf);