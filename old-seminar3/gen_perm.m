function [p] = gen_perm(n)
p=zeros(1,n);
for i=1:n
    gata=0;
    while ~gata
        x=unidrnd(n);
        if ~ismember(x,p)
            p(i)=x;
        gata=1;
        end;
    end;
end;
end

