function [val]=f_obiectiv(valoare,sir,n)
% functia obiectiv din problema rucsacului 
% valore - vectorul meritului selectarii obiectelor
% meritul unei alegeri=suma valorilor obiectelor alese
% situatia in care nu este ales nici un obiect este considerata imposibila 
% sir - sirul de biti care reprezinta individul (gena i are valoarea1 daca si numai daca obiectul i a fost selectat)
% n=length(sir);
val=0;
for i=1:n
    val=val+sir(i)*valoare(i);
end;
end
