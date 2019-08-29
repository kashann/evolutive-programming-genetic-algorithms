function [Parinti] = ruleta(Pop)
[dim,m]=size(Pop); 
%m=n+1;

cPop=sum(Pop(:,m));
p=zeros(1,dim);
for i=1:dim
    p(i)=Pop(i,m)/cPop;
end;
q=p;
for i=2:dim
    q(i)=q(i-1)+p(i);
end;

Parinti=zeros(dim,m);
for i=1:dim
    r=unifrnd(0,1);
    j=1;
    while r>q(j)
        j=j+1;
    end;
    Parinti(i,:)=Pop(j,:);
end;

end

