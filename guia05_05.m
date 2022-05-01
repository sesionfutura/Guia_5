datos= load('Datos_05_04.txt');

year= datos(:,12);

error=find(year==9999);
year(error)=[];
plot(year,'k','linewidth',3)
xlabel('Tiempo transcurrido','FontSize', 30)
ylabel(' Variación de presión ','FontSize', 30)
grid on
title ('Presión medida por una boyacon el paso de un huracán','FontSize',30)