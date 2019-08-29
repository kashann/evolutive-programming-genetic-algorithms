function [Nx] = vecini1(x,n,eps,k,a,b)
Nx=[];
for i=1:n
    y=x;
    y(i)=x(i)+eps;
    if apartine(y,n,a,b)
        Nx=[Nx;y];
    end;
    y=x;
    y(i)=x(i)-eps;
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

