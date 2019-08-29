dim=100;
P=gen_ini(dim);
pc=0.8;
w=0.7;
Children=crossover_pop(P,dim,pc,w);
disp(max(P(:,4)));
disp(max(Children(:,4)));