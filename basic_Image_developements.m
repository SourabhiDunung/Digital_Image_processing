%To create 2 dimensional digital image
clc;
close all;
clear all;
figure(1);
I=[1,0,1,0;0,1,0,1;1,0,1,0;0,1,0,1];
subplot(2,2,1);
imshow(I);
title('Digital chess board');
% to genarate 13 in part2
J=[0,1,0,0,0;0,1,1,1,0;0,1,0,0,0;0,1,1,1,0;0,1,0,0,0];
subplot(2,2,2);
imshow(J);
title('digital 13 image');
% to generate greyscale image
Y=[0,0.05,0.10,0.15,0.20;0.25,0.30,0.35,0.40,0.45;0.50,0.55,0.6,0.65,0.7;0.75,0.8,0.85,0.9,0.95];
subplot(2,2,3);
imshow(Y);
title('Digital greyscae image');
