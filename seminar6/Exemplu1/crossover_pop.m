function [O] = crossover_pop(P,dim,pc,w)
O=P;
for i=1:2:dim-1
    r=unifrnd(0,1);
    if r<=pc
        p1=P(i,1:3);
        p2=P(i+1,1:3);
        %[c1,c2]=crossover_wm(p1,p2,w);
        [c1,c2]=crossover_swm(p1,p2,w);
        if is_feasible(c1)
            O(i,1:3)=c1;
            O(i,4)=fitness(c1);
        end;
        if is_feasible(c2)
            O(i+1,1:3)=c2;
            O(i+1,4)=fitness(c2);
        end;
    end;
end;
end

