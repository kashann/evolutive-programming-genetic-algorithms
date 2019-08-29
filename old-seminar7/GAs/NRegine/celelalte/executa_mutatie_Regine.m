n=20;
Copii = gen_pop(n,250);
CopiiM=mutatie_pop(Copii,0.3);
x1=max(Copii(:,n+1));disp(['Individul cel mai bun in populatia de copii are ' num2str(n*(n-1)/2-x1) ' perechi in pozitie de atac']);
x2=max(CopiiM(:,n+1));disp(['Individul cel mai bun in populatia de copii mutati are ' num2str(n*(n-1)/2-x2) ' perechi in pozitie de atac']);