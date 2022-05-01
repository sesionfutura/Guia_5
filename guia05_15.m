clc
close all

format short
datos=load('Datos_05_15.txt');
A = readmatrix('Datos_05_15.txt');

Minimo = min(A)
Q1 = quantile(A,0.1)
Mediana = median(A)
Q3 = quantile(A,0.3)
Maximo = max(A)
StDev = std(A)
Skew = skewness(A)
Kurt = kurtosis(A)

figure()
plot(datos,'Linewidth',5)
legend('A','B','C')
title('Series de Tiempo para Punta Lavapie','FontSize',20)
set(gcf,'Color','w')