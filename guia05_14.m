clc
close all

datos = readmatrix('Datos_05_14.txt');
puntaje = datos(:,1);
min = 470;
h = [];
x = [];
while (470 <= min) && ( min <= 762)
    x = [x,(min+ (min+30))/2];
    a = find(puntaje > min & puntaje <= min + 30);
    h = [h length(a)];
    min = min + 30;
end
y = h;

figure
plot(x,h,'-rx')
xticks(470:30:770);
ylabel('Cantidad de Carreras')
xlabel('Puntaje')
title('Número de carreras accesibles según el puntaje obtenido')