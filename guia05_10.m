clc
close all

datos = load('Datos1.txt');
x = datos(1,:);
y = datos(2,:);

p = polyfit(x,y,1);
y1 = polyval(p,x);

figure
hold on
plot(x,y,'o','LineWidth',4)
plot(x,y1,'LineWidth',6)
title('Ajuste con ruido proporcional a Y','FontSize',25)
ylabel('Eje Y','FontSize',25)
xlabel('Eje X','FontSize', 25)
legend('Datos','Ajuste Lineal','FontSize',16)
box on