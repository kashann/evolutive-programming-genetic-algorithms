function [OK] = este_fezabil(sir,cost,n,cmax)
% verificarea fezabilitatii in cazul problemei rucsacului in caz continuu

 %calculul costului alegerii obiectelor conform vectorului sir 
    c=0;
    for j=1:n
        c=c+sir(j)*cost(j);
    end;
    
    %verificarea fezabilitatii
    OK= c<=cmax;

end

