function [c1,c2]=recombinare_unif(p1,p2,n)
c1=p1;
c2=p2;
for i=1:n
    r=unifrnd(0,1);
    if r>=0.5
        c1(i)=p2(i);
        c2(i)=p1(i);
    end;
end;
end

