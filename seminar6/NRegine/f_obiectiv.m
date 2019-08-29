function [val]=f_obiectiv(p,n)
% functia obiectiv din problema celor n regine
% gradul de "neconformitate" a unei permutari:numarul de pozitii distincte de pe tabla de sah
% pentru care reginele plasate in acele pozitii sunt in situatie de atac
val=0;
for i=1:n
    for j=i+1:n
        if(abs(i-j)==abs(p(i)-p(j)))
            val=val+1;
        end;
    end;
end;
% calitatea permutarii: numarul total de perechi de pozitii (regine) posibile - numarul de perechi "neconforme" 
val=n*(n-1)/2-val;
end
