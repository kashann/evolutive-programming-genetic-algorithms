function [Pop_ini] = gen_ini(dim,n,c,v,cmax)
Pop_ini=zeros(dim,n+1);
i=1;
while i<=dim
    s=unifrnd(0,1,1,n);
    [ok,~]=is_ad(s,n,c,cmax);
    if ok
        Pop_ini(i,1:n)=s;
        Pop_ini(i,n+1)=fitness(s,n,v);
        i=i+1;
    end;
end;
end

