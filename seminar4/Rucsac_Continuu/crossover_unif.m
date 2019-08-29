function [c1,c2] = crossover_unif(x,y,n)
c1=x;
c2=y;
for i=1:n
    r=unifrnd(0,1);
    if r>0.5
        c1(i)=y(i);
        c2(i)=x(i);
    end;
end;
end

