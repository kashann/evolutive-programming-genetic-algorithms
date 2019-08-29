function [OK,ct] = is_ad(s,n,c,cmax)
ct=0;
for i=1:n
    ct=ct+s(i)*c(i);
end;
OK=ct<=cmax;
end

