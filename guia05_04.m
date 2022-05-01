clc
close all


datos= load('Datos_05_04.txt');

year= datos(:,12);

error=find(year==9999);
year(error)=[];
plot(year)
grid on
xlabel('Año cronólogico desde 01/01/99 al 01/01/00')
ylabel(' Variación de presión')
title('Presión medida por una boya con el paso de un huracán','FontSize',15)