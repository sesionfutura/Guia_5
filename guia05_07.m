clc
close all

x = 1:100;
c = randn(1,100);
y = 20*(x)+3+c.*x;
poli = polyfit(x,y,1);
y2 = polyval(poli,x);

figure(1)

subplot(2,1,1)
hold on
plot(x,y,'o')
plot(x,y2,'linewidth',1)
xlabel ('Eje x');
ylabel ('Eje y');
title('Ajuste con ruido proporcional a Y','fontsize',10);
legend('Datos','ajuste lineal');


subplot(2,1,2)
plot(x, y-y2,'-*','linewidth',1)
xlabel ('Eje x');
ylabel ('Diferencia de datos');
title('Error del ajuste','fontsize',10);