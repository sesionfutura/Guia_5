close all
clc

datos = load('Datos.txt');

year = [];
for i=1993:2019
    year = [year ; ones([12,1])*i];
end

month = [];
for j=1993:2019
    month = [month ; 1 ; 2 ; 3 ; 4 ; 5 ; 6 ; 7 ; 8 ; 9 ; 10 ; 11 ; 12];
end

g = [];
for q=1995:5:2020
    g = [g datenum(q,6,15)];
end

new = ones(324,1);

n = datenum(year,month,new);
x = (n);
P = datos(:,2:end);
P = reshape(P',[324,1]);
y = P;
y(find(y == -999.9)) = 0;
poli1 = polyfit(x,y,1);
aj1 = polyval(poli1,x);
poli2 = polyfit(x,y,2);
aj2 = polyval(poli2,x);

figure
hold on
plot(x,y,'-o','MarkerFaceColor','r','Color','r','LineWidth',2)
plot(x,aj1,'-','LineWidth',2,'Color','b')
plot(x,aj2,'-','LineWidth',2,'Color','k')
plot(x,y-aj1,'o','MarkerFaceColor','b','Color','k')
plot(x,y-aj2,'o','MarkerFaceColor','k','Color','b')
xticks(g)
ylim([-0.02 0.1])
datetick('x','yyyy','keepticks')
xlim([datenum(1993,1,15) datenum(2019,3,15)])
title('ANM 1993-2019 - Copernicus')
xlabel('Año')
ylabel('ANM[m.]')
legend('Datos','Lineal','Cuadrado')
box on