function [Pop,valm,poz] = gen(dim)
Pop=zeros(dim,4);

%Pop(i,j)-componenta i,j
%Pop(1,:)-prima linie (: = toate coloanele)
%Pop(1,1:3)-prima linie, primele 3 elemente din linie
%Pop(:,2)-a doua coloana - vector coloana cu dim elemente

Pop(:,1)=unifrnd(-1,1,dim,1);
Pop(:,2)=unifrnd(2,7,dim,1);
Pop(:,3)=unifrnd(0,1,dim,1);

for l=1:dim
    Pop(l,4)=Pop(l,1)^2-2*Pop(l,1)*Pop(l,3)+sqrt(Pop(l,2));
end;

[valm,poz] = max(Pop(:,4));

end

