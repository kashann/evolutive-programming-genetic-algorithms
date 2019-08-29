function [OK,costt] = verifica_fez(sir,cmax,cost,n)
% suma costurilor obiectelor alese nu trebuie sa depaseasca cmax
%calculul costului alegerii obiectelor conform vectorului sir 
    costt=0;
    for j=1:n
        costt=costt+sir(j)*cost(j);
    end;
    OK= costt<=cmax;

end

