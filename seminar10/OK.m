function [flag] = OK(y,n,a,b)
flag=1;
for i=1:n
    if y(i)<a(i) || y(i)>b(i)
        flag=0;
        break;
    end;
end;
end