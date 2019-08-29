function [c1,c2] = crossover_OCX(x,y,n)
p=unidrnd(n,1,2);
while p(1)>=p(2)
    p=unidrnd(n,1,2);
end;
disp(p);
c1=OCX(x,y,n,p(1),p(2));
c2=OCX(y,x,n,p(1),p(2));
end

function c=OCX(x,y,n,p1,p2)
c=zeros(1,n);
c(p1:p2)=x(p1:p2);
% analiza genelor care vor fi plasate
vector=[y(p2:n) y(1:p2-1)];
poz=p2+1;
if poz>n
    poz=1;
end;
for i=1:n
    a=vector(i);
    if ~ismember(a,c)
        c(poz)=a;
        poz=poz+1;
    end;
    if poz>n
        poz=1;
    end;
end;
    
end

