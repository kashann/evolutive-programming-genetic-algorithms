function [c1,c2] = crossover_mp(s1,s2,n,alpha)
c1=s1;
c2=s2;
i=1+unidrnd(n-1);
c1(i:n)=alpha*s1(i:n)+(1-alpha)*s2(i:n);
c2(i:n)=alpha*s2(i:n)+(1-alpha)*s1(i:n);
end

