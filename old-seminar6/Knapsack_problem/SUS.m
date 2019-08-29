function [ MP ] = SUS( Pop )
[dim,n]=size(Pop);
n=n-1;
v_f=Pop(:,n+1);
fmed=mean(v_f);
sigma=std(v_f);
c=2;
v_g=zeros(1,dim);
for i=1:dim
    v_g(i)=max([0 v_f(i)-(fmed-c*sigma)]);
end;
s_g=sum(v_g);
p=v_g/s_g;
q=zeros(1,dim);
q(1)=p(1);
for i=2:dim
    q(i)=q(i-1)+p(i);
end;
MP=zeros(dim,n+1);
i=1;
j=1;
r=unifrnd(0,1/dim);
while i<=dim
    while r<=q(j)
        MP(i,:)=Pop(j,:);
        i=i+1;
        r=r+1/dim;
    end;
    j=j+1;
end;
end

