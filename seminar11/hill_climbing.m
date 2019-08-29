function [sol,val] = hill_climbing(n,a,b,MAX,eps,k)
%[sol,val] = hill_climbing(2,[-3 -3],[3 3],1000,1e-2,100)
%[sol,val] = hill_climbing(5,[-3 -3 -3 -3 -3],[3 3 3 3 3],1000,1e-3,100)

x=unifrnd(a,b,1,n);  
vminc=Ackley(x,n);
it=1;
gata=0;
while it<=MAX && ~gata
    Nx=vecini1(x,n,eps,k,a,b);
    % Nx este matricea vecinilor cu nrv linii si n coloane
    % vecinul i: Nx(i,:)
    [nrv,~]=size(Nx);
    valori=zeros(1,nrv);
    for i=1:nrv
        valori(i)=Ackley(Nx(i,:),n);
    end;
    [valmin,pozmin]=min(valori);
    if valmin<vminc
        x=Nx(pozmin,:);
        vminc=valmin;
        it=it+1;
    else
        gata=1;
    end;
end;
disp(it);
sol=x;
val=vminc;
disp(sol);
disp(val);
plot_Ackley_2D(a,b,n,sol,val)
end

