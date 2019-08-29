function [Parinti] =SUS(Pop)
[dim,m]=size(Pop);
n=m-1;
%SUS implementat pe distributia de probabilitate FPS cu sigma-scalare, c=2
c=2;
medie=mean(Pop(:,n+1));
sigma=std(Pop(:,n+1));
val=medie-c*sigma;
g=zeros(1,dim);
for i=1:dim
    g(i)=max([Pop(i,n+1)-val 0]);
end;
s=sum(g);
%p este distributia de probabilitate dupa care se face generarea populatiei
%de parinti
p=g/s;
q=zeros(1,dim);
for i=1:dim
    q(i)=sum(p(1:i));
end;
%generarea populatiei de parinti conform SUS
Parinti=zeros(dim,m);
r=unifrnd(0,1/dim);
i=1;j=1;
while (i<=dim)
    while(r<=q(j))
        Parinti(i,:)=Pop(j,:);
        i=i+1;
        r=r+1/dim;
    end;
    j=j+1;
end;
end

