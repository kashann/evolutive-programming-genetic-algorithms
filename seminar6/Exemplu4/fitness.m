function [val] = fitness(s,n,a,b)
val=0;
for i=1:n
    val=val+a(i)*s(i)^2+b(i)*s(i);
end;
end

