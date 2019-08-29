function [c] = cost(p,D)
n=length(p);
c=0;
for i=1:n-1
    c=c+D(p(i),p(i+1));
end;
c=c+D(p(1),p(n));
end

