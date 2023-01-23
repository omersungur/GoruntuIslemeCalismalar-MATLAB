close all
clear all
image = imread('deneme.jpg');
figure;
imshow(image);
image(:,:,2) = 0;
image(:,:,3) = 0;
figure;
imshow(image);
figure;
imshow(image(:,:,1));
