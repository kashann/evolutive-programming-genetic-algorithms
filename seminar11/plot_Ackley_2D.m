function []=plot_Ackley_2D(a,b,y)
figure
[X,Y] = meshgrid([a:0.1:b]);
Z=-20*exp(-0.2*sqrt((X.^2+Y.^2)/2))-exp((cos(2*X.*pi)+cos(2*Y.*pi))/2)+20+exp(1);
surf(X,Y,Z);
hold on;
plot3(y(1),y(2),Ackley(y,2),'s','MarkerFace','y','MarkerEdge','r','MarkerSize',15);
colormap hsv
end