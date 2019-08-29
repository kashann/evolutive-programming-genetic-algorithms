costs=load('cost.txt');
values=load('value.txt');
n=length(costs);
dim=20;
cmax=5;
Population0=gen_ini(dim,n,costs,values,cmax);
ct=zeros(n,1);
for i=1:dim
    s=Population0(i,1:n);
    [~,ct(i)]=is_ad(s,n,costs,cmax);
end;

%HOMEWORK: solve the problem of initial population generation in case of
%tsp problem, the n queens problem, maximize a function having as input a
%10 dimensional vector, each component lies in [-3,10]