function [val] = fitness_rd(b,s)
n=length(b)
val=0;
for i=1:n
    val=val+b(i)*s(i);
end;
end

