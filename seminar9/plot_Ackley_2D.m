function []=plot_Ackley_2D(a,b,n,xx,val)
if n==2
figure
[X,Y] = meshgrid(a(1):0.1:b(1),a(2):0.1:b(2));
Z=-20*exp(-0.2*sqrt((X.^2+Y.^2)/2))-exp((cos(2*X.*pi)+cos(2*Y.*pi))/2)+20+exp(1);
surf(X,Y,Z);
hold on;

v=(1-val)/val;
plot3(xx(1),xx(2),v,'s','MarkerFace','y','MarkerEdge','r','MarkerSize',7);

colormap hsv
else
    disp('Nu putem figura grafic');
end;
end

