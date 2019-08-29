function [s] = gen_solf(c,cmax)
n=length(c);
OK=0;
while ~OK
    m=unidrnd(2^n)-1;
    s=bitget(m,n:-1:1);
    ctot=0;
    for i=1:n
        ctot=ctot+s(i)*c(i);
    end;
    OK=ctot<=cmax;
end;
end

