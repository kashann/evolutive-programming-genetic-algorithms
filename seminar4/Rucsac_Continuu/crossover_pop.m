function [O] = crossover_pop(P,dim,n,pc,v,c,cmax,alpha)
O=P;
copii=zeros(2,n);
for i=1:2:dim-1
    r=unifrnd(0,1);
    if r<=pc
        p1=P(i,1:n);
        p2=P(i+1,1:n);
        disp(['Au fost selectati indvizii: ' num2str(i) ', ' num2str(i+1)]);
        disp(P(i,:));
        disp(P(i+1,:));
       % [copii(1,1:n),copii(2,1:n)]=crossover_unif(p1,p2,n);-recombinare
       % uniforma
        [copii(1,1:n),copii(2,1:n)]=crossover_mpsingular(p1,p2,n,alpha);
        disp('Rezulta: ');
        for j=1:2
            disp(['Copilul ' num2str(j)]);
            if este_fezabil(copii(j,:),c,n,cmax)
                O(i+j-1,1:n)=copii(j,:);
                O(i+j-1,n+1)=f_obiectiv(v,copii(j,:),n);
                disp(O(i+j-1,:));
            else
                disp('Nu este fezabil. Este inlocuit cu parintele.');
            end;
        end;
    else 
        disp('Recombinare asexuata.');
    end;
end;
        
end

