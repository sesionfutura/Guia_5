datos= load('Datos_05_04.txt');

press= datos(:,12);
error=find(press==9999);
press(error)=[];

year= datos(:,1);
year(error)=[];

month= datos(:,2);
month(error)=[];

day= datos(:,3);
day(error)=[];

hour= datos(:,4);
hour(error)=[];

date= datenum(year,month,day,hour,0,0);

figure(1)
hold on
grid on
plot(date,press)
datetick('x',1)
title('Presión medida por una boya con el paso de un huracán','FontSize',15)
xlabel ('Tiempos en medición')
ylabel ('Presión [degT]')
legend('Variación de presión')