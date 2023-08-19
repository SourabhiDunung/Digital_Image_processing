% Expt 2: To perfor, operation on images
%importing the images
clc;
close all;
clear all;
figure(1);
subplot(2,2,1);
%to read the image
A = imread('RGBImageExample.jpg');
imshow(A)
title('Orignal image');
%to decompose the image
subplot(2,2,2);
R = A(:,:,1);
imshow(R);
title('R channel image');

subplot(2,2,3);
G = A(:,:,2);
imshow(G);
title('G channel image');

subplot(2,2,4);
B = A(:,:,3);
imshow(B);
title('B channel image');

%binarization
figure(2);
subplot(2,2,1);
A = imread('RGBImageExample.jpg');
imshow(A)
title('Orignal image');

subplot(2,2,2);
R_B=imbinarize(R);
imshow(R_B);
title('Binarized R channel');

subplot(2,2,3);
G_B=imbinarize(G);
imshow(G_B);
title('Binarized G channel');

subplot(2,2,4);
B_B=imbinarize(B);
imshow(B_B);
title('Binarized B channel');

%Performing arithematic operations

figure(3);
subplot(2,2,1);
A_add=imadd(R_B,G_B);
imshow(A_add);
title('Addition');

subplot(2,2,2);
A_subtract=imsubtract(R_B,G_B);
imshow(A_subtract);
title('Subtraction');

subplot(2,2,3);
A_multiply=immultiply(R_B,G_B);
imshow(A_multiply);
title('Multiplication');

subplot(2,2,4);
A_divide=imadd(R_B,G_B);
imshow(A_divide);
title('Division');

%Logical operations
figure(4);
subplot(2,2,1);
A_and= R_B&G_B;
imshow(A_and);
title('Anding');

subplot(2,2,2);
A_or= R_B|G_B;
imshow(A_or);
title('Oring');

subplot(2,2,3);
A_xor= xor(R_B,G_B);
imshow(A_xor);
title('Xoring');

subplot(2,2,4);
A_complement= ~R_B;
imshow(A_complement);
title('Complementing');

%Expanding the image
figure(5);
subplot(2,2,1);
imshow(R_B);

subplot(2,2,2);
A_expand = imresize(R_B,10);
imshow(A_expand);
title('Expanding');

subplot(2,2,3);
A_compress = imresize(R_B,0.1);
imshow(A_compress);
title('Compressing');

subplot(2,2,4);
A_rotate = imrotate(R_B,45);
imshow(A_rotate);
title('Rotating');
