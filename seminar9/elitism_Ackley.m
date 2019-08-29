function [Pop_urm] =elitism_Ackley(Pop_curenta,Copii )
%presupunem ca dimensiunea populatiei de copii=dimensiunea populatiei la
%momentul curent
[dim,m]=size(Pop_curenta);
Pop_urm=Copii;
[val1,i1]=max(Pop_curenta(:,m));
[val2,~]=max(Copii(:,m));
if(val1>val2)
    best=Pop_curenta(i1,:);
    %este inlocuit un copil aleator
    ind=unidrnd(dim);
    Pop_urm(ind,:)=best;
end;
end

