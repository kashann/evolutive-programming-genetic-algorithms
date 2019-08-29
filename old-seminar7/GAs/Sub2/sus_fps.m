function [ parinti ] = sus_fps( pop1,pop2 )
[dim,m]=size(pop1);
parinti=zeros(dim,m);
calitate_o1=sum(pop1(:,m));
calitate_o2=sum(pop2(:,m));
p1=pop1(:,m)/calitate_o1;
p2=pop2(:,m)/calitate_o2;

q1=zeros(1,dim);
q2=zeros(1,dim);
for i=1:dim
    q1(i)=sum(p1(1:i));
end;
for i=1:dim
    q2(i)=sum(p2(1:i));
end;

i=1; k=1; r=unifrnd(0,1/dim);
while(i<=dim)
    x=unidrnd(2);
    if(x==1)
    while(r<=q1(i))
        parinti(k,:)=pop1(i,:);
        r=r+1/dim;
        k=k+1;
    end;
    else
        while(r<=q2(i))
        parinti(k,:)=pop2(i,:);
        r=r+1/dim;
        k=k+1;
       end;
    end;
        
    i=i+1;
end;
    


end

