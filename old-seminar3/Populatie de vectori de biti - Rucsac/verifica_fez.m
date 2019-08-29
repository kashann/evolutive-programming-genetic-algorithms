function [OK,costt] = verifica_fez(sir,cmax,cost,n)
costt=0;
for j=1:n
    costt=costt+sir(j)*cost(j);
end;
OK=costt<=cmax;

end

