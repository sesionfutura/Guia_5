clc
close all

x = linspace(0,4*pi,10);
y = sin(x);

poli = polyfit(x,y,7);
y2 = polyval(poli,x);

x2 = linspace(0,10*pi,100);
ny = sin(x2);
poli2 = polyfit(x2,ny,7);
y3 = polyval(poli2,x2);

error = y2 - y;
error2 = y3-ny;

figure
box on
grid on
hold on
plot(x,y,'-b*')
plot(x,y2,'-r*')
plot(x,error,'-g|')
legend('mediciones','ajuste','diferencia')
ylabel('sen(x)')
xlabel('radianes')

figure
box on
grid on
hold on
plot(x,y,'-b*')
plot(x2,y3,'-r*')
plot(x2,error2,'-g|')
legend('mediciones','ajuste','diferencia')
ylabel('sen(x)')
xlabel('radianes')

figure
box on
grid on
hold on
plot(x,y,'-b*')
plot(x2,y3,'-r*')
plot(x2,error2,'-g|')
legend('mediciones','ajuste','diferencia')
ylabel('sen(x)')
xlabel('radianes')
axis([0 4*pi -1 1])