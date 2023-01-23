close all
clear all
image = imread('deneme.jpg');
boyut = size(image);
figure;imshow(image);
Igray = rgb2gray(image);
figure;imshow(Igray);
boyut2 = size(Igray);
figure;imshow(image(:,:,2));
image(:,:,1) = image(:,:,1) +100;
figure;imshow(image);
