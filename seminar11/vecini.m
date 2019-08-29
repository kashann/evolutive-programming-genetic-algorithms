function [Nx] = vecini(x,n,eps,k,a,b)
Nx=[];
val=eps*ones(1,n);
for i=1:k
    y=x+i*val;
    if apartine(y,n,a,b)
        Nx=[Nx;y];
    end;
    y=x-i*val;
    if apartine(y,n,a,b)
        Nx=[Nx;y];
    end;
end;
end

function ok=apartine(y,n,a,b)
ok=1;
for i=1:n
    if y(i)<a(i) || y(i)>b(i)
        ok=0;
        break;
    end;
end;
end

