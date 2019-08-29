function [Pop]=gen_pop(dim,m)
% ACEASTA FUNCTIE ESTE FOLOSITA IN GA PENTRU GENERAREA POPULATIEI LA
% MOMENTUL INITIAL

%generarea populatiei initiale in problema celor m regine
%exemplu: pop=gen_pop_perm(10,8);

%Pop are dim indivizi; 
%Initializarea cu matricea nula
Pop=zeros(dim,m+1);
for i=1:dim
    %fiecare linie din Pop are primele m componente permutarea corespunzatoare
    %unei configuratii si ultimul element este calitatea individului 
    Pop(i,1:m)=gen_perm(m);
    Pop(i,m+1)=f_obiectiv(Pop(i,1:m),m);
end;
end
