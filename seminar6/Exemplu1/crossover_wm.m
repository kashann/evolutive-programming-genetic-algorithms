function [c1,c2] = crossover_wm(p1,p2,w)
c1=w*p1+(1-w)*p2;
c2=w*p2+(1-w)*p1;
end

