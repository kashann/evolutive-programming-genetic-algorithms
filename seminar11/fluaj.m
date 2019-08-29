function y = fluaj(x,n,sigma)
noise=normrnd(0,sigma,1,n);
y=x+noise;
end

