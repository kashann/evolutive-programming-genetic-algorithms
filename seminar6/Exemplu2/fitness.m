function [val] = fitness(p,n)
val=0;
for i=1:n
    if p(i)==i
        val=val+1;
    end;
end;
end

