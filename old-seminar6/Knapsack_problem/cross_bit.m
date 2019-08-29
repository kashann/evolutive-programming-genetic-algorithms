function [ rez ] = cross_bit( x1,y1,n)
% pozitia pentru incrucisare: intre 2 si n-1
poz=unidrnd(n-2)+1;
rez(1,:)=x1;rez(2,:)=y1;
rez(1,poz:n)=y1(poz:n);
rez(2,poz:n)=x1(poz:n);
end

