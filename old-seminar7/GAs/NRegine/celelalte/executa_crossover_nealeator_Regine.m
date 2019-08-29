n=20;
Parinti = gen_pop(n,250);
Copii=crossover_Regine(Parinti,0.8);
x1=max(Parinti(:,n+1));disp(['Individul cel mai bun in populatia de parinti are ' num2str(n*(n-1)/2-x1) ' perechi in pozitie de atac']);
x2=max(Copii(:,n+1));disp(['Individul cel mai bun in populatia de copii  are ' num2str(n*(n-1)/2-x2) ' perechi in pozitie de atac']);
