function [y] = mutatie_fluaj(x,sigma)
% generarea variatiei r
r=normrnd(0,sigma);
% perturbarea cu r
y=r+x;

% impunerea pragului inferior 0 si respectiv a pragului superior 1 -
% rezultatul trebuie sa ramana pe [0,1] in problema rucsacului in caz
% continuu
if y<0
    y=0;
else 
    if y>1
        y=1;
    end;
end;
end

