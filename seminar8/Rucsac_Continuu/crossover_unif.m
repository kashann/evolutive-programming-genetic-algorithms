function [c1,c2] = crossover_unif(s1,s2,n)
c1=s1;
c2=s2;
for i=1:n
    r=unifrnd(0,1);
    if r>.5
        c1(i)=s2(i);
        c2(i)=s1(i);
    end;
end;
end

