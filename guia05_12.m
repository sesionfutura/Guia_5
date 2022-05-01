clc
close all

datos = load("Datos.txt");

error = find(datos == -999.90);

datos(error) = 0;

x1 = 1993:2019;
y1 = datos(:,2);

figure(1)
box on
grid on
plot(x1,y1,'-ro','MarkerFaceColor','b','LineWidth',2)
axis([1993 2019 -0.1765117E-02 0.08])
ylabel('anomalía [mm.]')
xlabel('Año')
title('SLA para el mes de Enero 1993-2019')
legend('datos enero 1993-2019')

startDate = datenum('01-01-2019');
endDate = datenum('12-31-2019');
x2 = linspace(startDate,endDate,12);
y2 = datos(27,2:13);
p = polyfit(x2,y2,2);
py = polyval(p,x2);

figure(2)
box on
grid on
hold on
plot(x2,y2,'-ro','MarkerFaceColor','b','LineWidth',2)
plot(x2,py,'-bo','MarkerFaceColor','r','LineWidth',2)
ax = gca;
ax.XTick = x2;
datetick('x','mmm','keepticks')
xlabel('MES')
ylabel('anomalía [mm.]')
title('SLA para el 2019')
legend('Datos Originales','Curva ajustada grado 2')


figure(3)
box on
grid on
plot(x1,y1,'-ro','MarkerFaceColor','b','LineWidth',6)
axis([1993 2019 -0.1765117E-02 0.08])
ylabel('anomalía [mm.]','FontSize',25)
xlabel('Año','FontSize',25)
title('SLA para el mes de Enero 1993-2019','FontSize',25)
legend('datos enero 1993-2019','FontSize',16)

figure(4)
box on
grid on
hold on
plot(x2,y2,'-ro','MarkerFaceColor','b','LineWidth',6)
plot(x2,py,'-bo','MarkerFaceColor','r','LineWidth',6)
ax = gca;
ax.XTick = x2;
datetick('x','mmm','keepticks')
xlabel('MES','FontSize',25)
ylabel('anomalía [mm.]','FontSize',25)
title('SLA para el 2019','FontSize',25)
legend('Datos Originales','Curva ajustada grado 2','FontSize',16)