function [c] = fitness_r(p)
n=length(p);
c=0;
for i=1:n-1
    for j=i+1:n
        if(abs(i-j)==abs(p(i)-p(j)))
            c=c+1;
        end;
    end;
end;
c=n*(n-1)/2-c;
end

