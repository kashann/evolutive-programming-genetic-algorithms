function [y] = mutatie_fluaj(x,sigma)
r=normrnd(0,sigma);
y=x+r;
if y<0
    y=0;
else
    if y>1;
        y=1;
    end;
end;
end

