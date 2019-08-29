function [c1,c2] = crossover_PMX(x,y,n)
p=unidrnd(n,1,2);
while p(1)>=p(2)
    p=unidrnd(n,1,2);
end;
% x=[2 3 1 7 6 4 8 5];
% y=[5 4 7 2 1 3 6 8];
% n=8;
% p=[1 4];
disp(p);
c1=PMX(x,y,n,p(1),p(2));
c2=PMX(y,x,n,p(1),p(2));
end

function c=PMX(x,y,n,p1,p2)
c=zeros(1,n);
c(p1:p2)=x(p1:p2);
% analiza secventei comune
for i=p1:p2
    a=y(i);
    if ~ismember(a,c)
        %plasarea alelei a
        curent=i;
        plasat=0;
        while ~plasat
            b=x(curent);
            % cauta poz, pozitia pe care se afla b in y  
            poz=find(y==b);
            if ~c(poz)
                c(poz)=a;
                plasat=1;
            else
                curent=poz;
            end;
        end;
    end;
end;
% copierea alelelor din y inca necopiate in c                
for i=1:n
    if ~ismember(y(i),c)
        poz=find(c==0,1);
        c(poz)=y(i);
    end;
end;
end

