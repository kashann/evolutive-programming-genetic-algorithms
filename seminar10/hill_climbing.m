function [sol,val] = hill_climbing(n,a,b,MAX,eps,k)
x=unifrnd(a,b,1,n);
% for i=1:n x(i)=unifrnd(a(i),b(i)); end;
it=1;
stop=0;
valx=Ackley(x,n);
while it<=MAX && ~stop
    Nx=computen(x,n,a,b,eps,k);
    [dim,~]=size(Nx);
    values=zeros(1,dim);
    for i=1:dim
        values(i)=Ackley(Nx(i,:));
    end;
    [valmin,pozmin]=min(values);
    vx=Nx(pozmin,:);
    if valmin<valx
        x=vx;
        valx=valmin;
        it=it+1;
    else
        stop=0;
    end;
end;
sol=x;
val=valx;
plot_Ackley_2D(a,b,n,sol,val);
disp(sol);
disp(val);
end