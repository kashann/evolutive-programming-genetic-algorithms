function [val]=f_obiectiv(valoare,sir,n)
% functia obiectiv din problema rucsacului 
% valore - vectorul meritului selectarii obiectelor
% meritul unei alegeri=suma valorilor obiectelor alese*fractiuni
% sir - sirul de numere reale care reprezinta individul (gena i are valoarea egala cu fractiunea selectata din obiectul i
% n=length(sir);

val=0;
for i=1:n
    val=val+sir(i)*valoare(i);
end;
end
