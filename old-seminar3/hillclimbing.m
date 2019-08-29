function [sol,cs] = hillclimbing(NMax,numec)
%[s,costs]=hillclimbing(500,'distante.txt');
D=load(numec);
[n,~]=size(D);
%daca folosim ~ ca val aleatorie inseamnca ca nu ne intereseaza ce valoare este
nv=n*(n-1)/2;
t=max(max(D));
cs=n*t;%cel mai mare cost posibil
for i=1:NMax
    vc=gen_perm(n);
    cmin=cost(vc,D);
    local=0;
    while ~local
        Nv=vecini(vc);
        bv=Nv(1,:);
        cv=cost(bv,D);
        for k=2:nv
            if cv>cost(Nv(k,:),D);
                bv=Nv(k,:);
                cv=cost(bv,D);
            end;
        end;
        if cmin>cv
            vc=bv;
            cmin=cv;
        else
            local=1;
        end;
    end;
    if cmin<cs
        sol=vc;
        cs=cmin;
    end;
end;
end

