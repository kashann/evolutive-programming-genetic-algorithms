function [ Pop ] = generare_pop( dim,m,a,b,c,d,e,f )
Pop=zeros(dim,m+1);
for i=1:dim
    x1=unifrnd(a,b);
    x2=unifrnd(c,d);
    x3=unifrnd(e,f);
    Pop(i,1:m)=[x1 x2 x3];
    Pop(i,m+1)=f_obiectiv(x1,x2,x3);
end;


end

