clear all
close all
image = imread('deneme2.jpg');
Igray = rgb2gray(image);
figure;imshow(Igray);
Iout = Igray;
k = 100;
Iout(Iout<k) = 0;
Iout(Iout>=k) = 255;

figure; imshow(Iout);
