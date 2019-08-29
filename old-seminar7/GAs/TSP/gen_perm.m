function [ p ] = gen_perm(n)
p=zeros(1,n);
for i=1:n
    gata=0;
    while ~gata
        nr=unidrnd(n);
        if ~ismember(nr,p)
            p(i)=nr;
            gata=1;
        end;
    end;
end;
end

