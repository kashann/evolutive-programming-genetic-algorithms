function [q] =FPS(Pop,dim,n)
q=zeros(1,dim);
fitnesst=sum(Pop(:,n+1));
p=Pop(:,n+1)/fitnesst;
q(1)=p(1);
for i=2:dim
    q(i)=q(i-1)+p(i);
end;
end

