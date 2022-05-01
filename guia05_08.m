clc
close all

uni1 = rand(100,1);
uni2 = rand(1000,1);
uni3 = rand(10000,1);

gau1 = randn(100,1);
gau2 = randn(1000,1);
gau3 = randn(10000,1);

figure(1)

subplot(2,3,1)
box on
histogram(uni1,10,'FaceColor','b')
title('U: 100 elementos')

subplot(2,3,2)
box on
histogram(uni2,10,'FaceColor','b')
title('U: 1000 elementos')

subplot(2,3,3)
box on
histogram(uni3,10,'FaceColor','b')
title('U: 10000 elementos')

subplot(2,3,4)
box on
histogram(gau1,10,'FaceColor','b')
title('G: 100 elementos')

subplot(2,3,5)
box on
histogram(gau2,10,'FaceColor','b')
title('G: 1000 elementos')

subplot(2,3,6)
box on
histogram(gau3,10,'FaceColor','b')
title('G: 10000 elementos')