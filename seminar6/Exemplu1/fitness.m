function [val] = fitness(x)
val=2+x(1)*x(3)+(x(2))^2-2*sin(x(1)*x(2));
end

