clc
close all

datos = load('Datos1.txt');
x = datos(1,:);
y = datos(2,:);

p = polyfit(x,y,1);
y1 = polyval(p,x);

figure
hold on
plot(x,y,'o')
plot(x,y1)
title('Ajuste con ruido proporcional a Y')
ylabel('Eje Y')
xlabel('Eje X')
legend('Datos','Ajuste Lineal')
box on