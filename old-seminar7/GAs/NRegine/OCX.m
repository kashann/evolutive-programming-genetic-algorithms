function [x2,y2]=OCX(x1,y1,m)
% disp('parintii:');
% disp(x1);
% disp(y1);
p=zeros(1,2);
while p(2)==p(1) 
     p=unidrnd(m,1,2);
end;
poz=sort(p);
% disp('Pozitiile:');
% disp(poz);
x2=OC1(x1,y1,m,poz(1),poz(2));
y2=OC1(y1,x1,m,poz(1),poz(2));
% disp('Copiii:');
% disp(x2);
% disp(y2);
end

function [x2]=OC1(x1,y1,m,p1,p2)
x2=zeros(1,m);
x2(p1:p2)=x1(p1:p2);
j=p2+1;
for i=p2:m
    if(j==m+1)
        j=1;
    end;
    if(~ismember(y1(i),x2))
        x2(j)=y1(i);
        j=j+1;
    end;
end;
for i=1:p2-1
    if(j==m+1)
        j=1;
    end;
    if(~ismember(y1(i),x2))
        x2(j)=y1(i);
        j=j+1;
    end;
end;
end

