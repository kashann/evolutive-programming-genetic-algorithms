n=20;
Populatie = gen_pop(n,250);
Parinti=ruleta(Populatie);
hist(Populatie(1:250,21));figure;figure(gcf);
hist(Parinti(1:250,21));figure(gcf);
