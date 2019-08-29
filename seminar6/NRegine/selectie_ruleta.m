function [Parinti] = selectie_ruleta(Populatie,dim,n)
q=FPS_scalare(Populatie,dim,n);
Parinti=zeros(dim,n+1);
for i=1:dim
    r=unifrnd(0,1);
    j=1;
    while q(j)<r
        j=j+1;
    end;
    Parinti(i,:)=Populatie(j,:);
end;
end

