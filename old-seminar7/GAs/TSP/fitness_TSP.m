function [val] = fitness_TSP(p,c)
n=length(p);
val=0;
for i=1:n-1
    val=val+c(p(i),p(i+1));
end;
val=c(p(1),p(n))+val;
val=1/val;
end