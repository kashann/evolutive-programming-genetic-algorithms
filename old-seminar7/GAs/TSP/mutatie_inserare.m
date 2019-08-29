function [y]=mutatie_inserare(x,n)
p=zeros(1,2);
p(1)=unidrnd(n);
p(2)=unidrnd(n);
while(p(1)==p(2))
    p(2)=unidrnd(n);
end;
poz=sort(p);
disp('Pozitiile:');
disp(poz);
y=x;
y(1:poz(1))=x(1:poz(1));
y(poz(1)+1)=x(poz(2));
y(poz(1)+2:poz(2))=x(poz(1)+1:poz(2)-1);
y(poz(2)+1:n)=x(poz(2)+1:n);

end