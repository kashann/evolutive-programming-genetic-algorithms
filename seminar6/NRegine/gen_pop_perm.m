function [Pop]=gen_pop_perm(dim,m)
% ACEASTA FUNCTIE ESTE DOAR UN EXEMPLU. IN GA VA FI FOLOSITA FUNCTIA
% gen_pop
%generarea populatiei initiale in problema celor m regine
%exemplu: pop=gen_pop_perm(10,8);

%Pop are dim indivizi; 
%Initializarea cu matricea nula
Pop=zeros(dim,m+1);
for i=1:dim
    %fiecare linie din Pop are primele m componente permutarea corespunzatoare
    %unei configuratii si ultimul element este calitatea individului 
    Pop(i,1:m)=gen_perm(m);
    % sau generam permutari cu functia MATLAB randperm:  Pop(i,1:m)=randperm(m);
    
    %disp(['individul ' num2str(i)]); disp(Pop(i,1:m));
    Pop(i,m+1)=f_obiectiv(Pop(i,1:m),m);
    %disp(['Calitatea lui:' num2str(Pop(i,m+1))]);
    %disp([' nr. de perechi de regine aflate in pozitie de atac:' num2str(m*(m-1)/2-Pop(i,m+1))]);
    % afisam 2 linii libere
    %str=sprintf('\n\n');
    %disp(str);
end;
end
