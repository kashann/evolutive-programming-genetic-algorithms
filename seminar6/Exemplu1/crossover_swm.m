function [c1,c2] = crossover_swm(p1,p2,w)
c1=p1;
c2=p2;
i=unidrnd(3);
c1(i)=w*p1(i)+(1-w)*p2(i);
c2(i)=w*p2(i)+(1-w)*p1(i);
end

