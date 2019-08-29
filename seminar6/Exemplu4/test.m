n=10;
a=[3 1 0 9 2 -1 -2 4 3 -1];
b=[23 -21 -0.5 -9 2 -1.7 -2 4.2 3 -11];
dim=100;
Parinti=generare_ini(dim,n,a,b);
disp(max(Parinti(:,n+1)));
% figure
% stem(Parinti(:,end));
% title('Calitatea parintilor');
pc=0.8;
Copii = recombinare_pop(Parinti,dim,n,pc,a,b);
disp(max(Copii(:,n+1)));
% figure
% stem(Copii(:,end));
%title('Calitatea copiilor');
