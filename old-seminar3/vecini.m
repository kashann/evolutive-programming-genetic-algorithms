function [S] = vecini(p)
S=[];
n=length(p);
for i=1:n-1;
    for j=i+1:n
    r=p;
    r(i)=p(j);
    r(j)=p(i);
    S=[S;r];
    end;
end;
end

