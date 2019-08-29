function [c1,c2] =crossover_singular(x,y,n,alpha)
c1=x;
c2=y;
poz=unidrnd(n);
c1(poz)=alpha*x(poz)+(1-alpha)*y(poz);
c2(poz)=alpha*y(poz)+(1-alpha)*x(poz);

end

