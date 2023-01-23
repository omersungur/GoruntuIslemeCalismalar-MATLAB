close all
clear all
image = imread('deneme2.jpg');
Igray = double(rgb2gray(image));
gama = 0.9;
figure;imshow(uint8(Igray));
Igray = Igray .^ gama;
figure;imshow(uint8(Igray));
