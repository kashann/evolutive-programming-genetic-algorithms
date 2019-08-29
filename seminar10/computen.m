function [Nx] = computen(x,n,a,b,eps,k)
variation=eps*ones(1,n);
Nx=[];
for i=1:2:2*k
    y=x+i*variation;
    if OK(y,n,a,b)
        Nx=[Nx;y];
    end;
    y=x-i*variation;
    if OK(y,n,a,b)
        Nx=[Nx;y];
    end;
end;
end