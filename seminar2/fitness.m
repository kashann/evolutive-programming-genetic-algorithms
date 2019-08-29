function [vt] = fitness(s,n,v)
vt=0;
for i=1:n
    vt=vt+s(i)*v(i);
end;
end

