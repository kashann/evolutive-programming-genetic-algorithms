function [sol,val] = ES2M(n,a,b,sigma,k,c,MAX)
%[sol,val] = ES2M(2,[-2 -2],[2 2],.5,100,0.9,500000)
%[sol,val] = ES2M(2,[-20 -20],[20 20],.5,100,0.9,500000)

%a=-20*ones(1,20);
%b=20*ones(1,20);
%[sol,val] = ES2M(20,a,b,.5,200,0.9,500000);
x=unifrnd(a,b,1,n);
it=1;
ps=0;
nr=0;
while it<=MAX
    y=fluaj(x,n,sigma);
    if Ackley(y,n)<=Ackley(x,n)
        x=y;
        ps=ps+1;
    end;
    nr=nr+1;
    if nr==k
        sr=ps/nr;
        if sr>.2
            sigma=sigma/c;
        else
            if sr<.2
                sigma=sigma*c;
            end;
        end;
        nr=0;
        ps=0;
    end;
    it=it+1;
end;
sol=x;
val=Ackley(x,n);
disp(sol);
disp(val);
solp=abs(sol);
b1=max(solp)+1;
a1=-b1;
if n==2
    plot_Ackley_2D(a1,b1,sol);
end

