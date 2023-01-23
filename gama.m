clear all
close all
image = imread('deneme2.jpg');
Igray = double(rgb2gray(image));
figure;imshow(uint8(Igray));
Igrayc = Igray;
gama = 1.25;
Igrayc = Igray.^gama;
figure;imshow(uint8(Igrayc));

